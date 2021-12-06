module TransactionsController
using Genie.Renderer.Json
using JSONTables
using DataFrames
using LibPQ

const DB_URL = ENV["DATABASE_URL"]
const TYPES = ["balance", "deposit", "withdrawal", "description"]
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

function get_all()
    conn = LibPQ.Connection(DB_URL)
    result = execute(conn, "SELECT * FROM transactions")
    close(conn)
    return arraytable(result)
end

function get(type::String, x::Nothing)
    if type in TYPES
        conn = LibPQ.Connection(DB_URL)
        result = execute(conn, "SELECT date,$(type) from transactions limit 20")
        close(conn)
        return arraytable(result)
    else
        return json(("msg" => "invalid type", "types include" => TYPES))
    end
end

function get(type::String, month::String)
    println("get2")
    if type in TYPES && month in keys(MONTHS)
        conn = LibPQ.Connection(DB_URL)
        result = execute(conn, "SELECT date,$(type) from transactions where date ilike '%$(month)%' ")
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




end
