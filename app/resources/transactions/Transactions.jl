module Transactions

import SearchLight: AbstractModel, DbId
import Base: @kwdef

export Transaction

@kwdef mutable struct Transaction <: AbstractModel
    id::DbId = DbId()
    date::String = ""
    description::String = ""
    deposits::Int = 0
    withdrawls::Int = 0
    balance::Int = 0
end

end
