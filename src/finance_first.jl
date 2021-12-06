module finance_first

using Logging, LoggingExtras

function main()
  # Base.eval(Main, :(const UserApp = finance_first))

  include("../genie.jl")

  Base.eval(Main, :(const Genie = finance_first.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
