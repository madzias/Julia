module projecttwo

include("mini.jl")

function line_optimize(f, a, b; eps=1e-3, method::SVOptMethod=mini())
	optimizer = method
	optimizer(f, a, b)
end

export line_optimize

end # module
