# Simple, brute force to get all factors of a certain number
# returns array

def get_factors(number)
	factors = []
	factors << 1
	if number > 2
		for i in 2..number-1
			if number % i == 0
				factors << i
			end
		end
		factors << number
	else
		factors << 2
	end
	return factors
end

