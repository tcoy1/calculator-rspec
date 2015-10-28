class Calculator
	
	def add(*n1)
		sum = n1.inject(:+)
		return sum
	end
	
end


# * in *n1 is splat operator -> variable number of variables!
# inject loops over object with right of : and returns to left.