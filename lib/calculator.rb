class Calculator
	
	def add(*n)
		sum = n.inject(:+)
		return sum
	end
	
	def subtract(*n)
		diff = n.inject(:-)
		return diff
	end
	
	def multiply(*n)
		prod = n.inject(:*)
		return prod
	end
		
		def divide(*n)
			quo = n.inject(:/)
			return quo
		end
end


# * in *n1 is splat operator -> variable number of variables!
# inject loops over object with right of : and returns to left.