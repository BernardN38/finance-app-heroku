module TransactionsController
using Genie.Renderer.Json
using JSONTables
using DataFrames
using LibPQ

const DB_URL = ENV["DATABASE_URL"]
const TYPES = ["balance", "deposit", "withdrawal"]
const MONTHS = Dict(
    "Jan" => 0,
    "Feb" => 0,
    "Mar" => 0,
    "Apr" => 0,
    "May" => 0,
    "Jun" => 0,
    "Jul" => 0,
    "Aug" => 0,
    "Sep" => 0,
    "Oct" => 0,
    "Nov" => 0,
    "Dec" => 0,
)
const MONTH_INDEX = Vector{String}([
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
])
const DAYS_IN_MONTH = Dict{String,Int}(
    "Jan" => 31,
    "Feb" => 28,
    "Mar" => 31,
    "Apr" => 30,
    "May" => 31,
    "Jun" => 30,
    "Jul" => 31,
    "Aug" => 31,
    "Sep" => 30,
    "Oct" => 31,
    "Nov" => 30,
    "Dec" => 31,
)
function get_all()
    conn = LibPQ.Connection(DB_URL)
    result = execute(conn, "SELECT * FROM transactions")
    close(conn)
    return arraytable(result)
end



function get_all(type::String, x::Nothing)
    if type in TYPES
        conn = LibPQ.Connection(DB_URL)
        result = execute(conn, "SELECT date,$(type) from transactions where $(type) > 0")
        close(conn)
        return arraytable(result)
    else
        return json(("msg" => "invalid type", "types include" => TYPES))
    end
end

function get_all(type::String, month::String)
    if type in TYPES
        conn = LibPQ.Connection(DB_URL)
        result = execute(
            conn,
            "SELECT date,$(type) from transactions where date ilike '$(month)-%' and $(type) > 0 ",
        )
        close(conn)
        return arraytable(result)
    else
        return json((
            "msg" => "invalid input",
            "types include" => TYPES,
            "months include" => keys(MONTHS),
        ))
    end
end

function get_limit(type::String, limit::String)
    if type == "net_worth"
        return json("no data")
    end
    conn = LibPQ.Connection(DB_URL)
    result = execute(
        conn,
        "SELECT date, $(type) FROM transactions  where $(type) > 0 ORDER BY id DESC LIMIT $(limit)",
    )
    close(conn)
    return arraytable(result)
end
function get_limit(type::String, limit::String, retirement::Bool)
    if retirement == false
        return get_limit(type, limit)
    end
    conn = LibPQ.Connection(DB_URL)
    result = execute(
        conn,
        "SELECT date, withdrawal FROM transactions where description ilike 'retirement%' ORDER BY id DESC LIMIT $(limit)",
    )
    close(conn)
    return arraytable(result)
end

function get_monthly_sums(type::String)
    if type in TYPES && type != "balance"
        monthly_sums = Dict()
        for i = 1:12
            conn = LibPQ.Connection(DB_URL)
            result = DataFrame(
                execute(
                    conn,
                    "SELECT SUM($(type)) from transactions where date ilike '$(i)-%' and $(type) > 0 ",
                ),
            )

            close(conn)

            monthly_sums[MONTH_INDEX[i]] = result[!, 1][1]
        end
        return json(monthly_sums)
    elseif type == "balance"
        monthly_sums = Dict()
        for i = 1:12
            day = DAYS_IN_MONTH[MONTH_INDEX[i]]
            conn = LibPQ.Connection(DB_URL)
            result = DataFrame(
                execute(
                    conn,
                    "SELECT balance from transactions where date ilike '$(i)-$(day)%' ",
                ),
            )
            close(conn)

            monthly_sums[MONTH_INDEX[i]] = result[!, 1][1]

        end
        return json(monthly_sums)
    elseif type == "retirement"
        monthly_sums = Dict()
        for i = 1:12
            day = DAYS_IN_MONTH[MONTH_INDEX[i]]
            conn = LibPQ.Connection(DB_URL)
            result = DataFrame(
                execute(
                    conn,
                    "SELECT SUM(withdrawal) from transactions where date ilike '$(i)-%' and description ilike 'retirement%'",
                ),
            )
            close(conn)

            monthly_sums[MONTH_INDEX[i]] = result[!, 1][1]

        end
        return json(monthly_sums)
    elseif type == "net_worth"
        monthly_sums = Dict()
        for i in range(1, length = 12)
            day = DAYS_IN_MONTH[MONTH_INDEX[i]]
            conn = LibPQ.Connection(DB_URL)
            account_balance = DataFrame(
                execute(
                    conn,
                    "SELECT id,balance from transactions where date ilike '$(i)-$(day)%' ",
                ),
            )
            id = account_balance.id[1]
            retirement_cont = DataFrame(
                execute(
                    conn,
                    "SELECT SUM(withdrawal) from transactions where id < $(id) and description ilike 'retirement%'",
                ),
            )
            close(conn)
            monthly_sums[MONTH_INDEX[i]] =
                account_balance.balance[1] + retirement_cont[!, 1][1]

        end
        return json(monthly_sums)
    else
        return json((
            "msg" => "invalid input",
            "types include" => TYPES,
            "months include" => keys(MONTHS),
        ))
    end
end


end
