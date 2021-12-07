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

function get_all()
    conn = LibPQ.Connection(DB_URL)
    result = execute(conn, "SELECT * FROM transactions")
    close(conn)
    return arraytable(result)
end

function get_limit(type::String, limit::String)
    conn = LibPQ.Connection(DB_URL)
    result = execute(conn, "SELECT date, $(type) FROM transactions  where $(type) > 0 ORDER BY id DESC LIMIT $(limit)")
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

function get_monthly_sums(type::String)
    if type in TYPES && type != "balance"
        monthly_sums = Dict()
        for i in range(1, length = 12)
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
        for i in range(1, length = 12)
            conn = LibPQ.Connection(DB_URL)
            result = DataFrame(
                execute(
                    conn,
                    "SELECT MAX($(type)) from transactions where date ilike '$(i)-%' and $(type) > 0",
                ),
            )
            close(conn)

            monthly_sums[MONTH_INDEX[i]] = result[!, 1][1]

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
