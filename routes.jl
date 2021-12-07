using Genie, Genie.Router, Genie.Requests, Genie.Renderer.Json
using TransactionsController
using JSONTables

route("/api/transactions/all", method = POST) do
    @time TransactionsController.get_all()
end

route("/api/transactions/sum", method = POST) do
    type = params(:type, nothing)
    # month = params(:month, nothing)
    @time TransactionsController.get_monthly_sums(type)
end
route("/api/transactions/limit", method = POST) do
    type = params(:type, nothing)
    limit = params(:limit, nothing)
    println(params())
    @time TransactionsController.get_limit(type, limit)
end
route("/api/transactions", method = POST) do
    type = params(:type, nothing)
    month = params(:month, nothing)
    @time TransactionsController.get_all(type, month)
end

route("*") do
    serve_static_file("index.html")
end
