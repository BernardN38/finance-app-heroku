using Genie, Genie.Router, Genie.Requests, Genie.Renderer.Json
using TransactionsController
using JSONTables

route("/api/transactions/all") do
    @time TransactionsController.get_all()
end

route("/api/transactions/sum") do
    type = params(:type, nothing)
    @time TransactionsController.get_monthly_sums(type)
end
route("/api/transactions/limit") do
    type = params(:type, nothing)
    limit = params(:limit, nothing)
    retirement = params(:retirement, nothing)
    retirement = parse(Bool, retirement)
    @time TransactionsController.get_limit(type, limit, retirement)
end
route("/api/transactions") do
    type = params(:type, nothing)
    month = params(:month, nothing)
    @time TransactionsController.get_all(type, month)
end

route("*") do
    serve_static_file("index.html")
end
