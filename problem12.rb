# Using diviso number cunction based on the exponents of the prime divisors
require 'prime'

puts "How many divisors?"
divisors = gets.chomp
divisors = Integer(divisors)

i = 1
triangle = 0
max_factors = 0

loop do 
	triangle += i
	factors = 1
	triangle.prime_division.each do |var|
		factors *= var[1]+1	
	end
	i += 1
	if factors > max_factors
		max_factors = factors
		puts factors.to_s + ", " + triangle.to_s
	end
	break if max_factors >= divisors
end

puts triangle

