require 'prime'

def sum_of_primes(n)
	Prime.take_while {|p| p < n }.inject(:+)
end

p sum_of_primes(2000000)