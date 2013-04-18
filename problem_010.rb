#This is kind of a lazy solution, but it gets the job done.

require 'prime'

primes = Prime.take_while {|p| p < 2000000 }

sum = 0

primes.each do |element|
	sum += element
end

puts sum