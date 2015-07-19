multiply = fn a,b -> a*b end
square = fn a-> multiply.(a,a) end
add = fn a,b -> a+b end


defmodule Recursion do

	@precision 100

	def sqrt(n, m, depth) when depth <= 0 do
		m
	end
	
	def sqrt(n, m, depth) do
		sqrt(n, 0.5 * (m + (n/m)), depth - 1)
	end

	def sqrt(n) do 
		sqrt(n, @precision * 100, @precision)
	end
end


IO.puts square.(5)

IO.puts Recursion.sqrt(Recursion.sqrt(square.(square.(5))))
