import UUIDs: UUID
import .ExploreExpression: SymbolsState
import JSON: lower

"The building block of `Notebook`s. Contains code, output and reactivity data."
mutable struct Cell
    "because Cells can be reordered, they get a UUID. The JavaScript frontend indexes cells using the UUID."
    uuid::UUID
    code::String
    parsedcode::Any
    output_repr::Union{String, Nothing}
    error_repr::Union{String, Nothing}
    repr_mime::MIME
    runtime::Union{Missing,UInt64}
    symstate::SymbolsState
    module_usings::Set{Expr}
end

Cell(uuid, code) = Cell(uuid, code, nothing, nothing, nothing, MIME("text/plain"), missing, SymbolsState(), Set{Expr}())
Cell(code) = Cell(uuid1(), code)