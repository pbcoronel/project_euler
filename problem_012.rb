# Using divisor number function based on the exponents of the prime divisors
# if n = (p**a)*(q**b)*(r**c).. where p,q,r,.. are the prime factors of n
# then the number of divisors of n d(n)=(a+1)*(b+1)*(c+1)*...

require 'prime'

def triangle(divisors)
	triangle = 0
	factors = 0
	i = 0

	until factors > divisors do 
		factors = 1
		i += 1
		triangle += i
		triangle.prime_division.each {|f| factors *= f[1]+1}  
	end
	return triangle
end

p triangle(500)



