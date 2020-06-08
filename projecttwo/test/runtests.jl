using projecttwo, Test

@testset "Single variable optimizers" begin

	@testset "Tolerance tests" begin
		for tolerance in [1, 0.5, 1e-1]
			@test isapprox(line_optimize(x -> x^2 - 1, -5, 5), 0.0, atol = tolerance)
			@test isapprox(line_optimize(x -> x^2 - 2x, -5, 5), 1.0, atol = tolerance)
		end
	end
end
