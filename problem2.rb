fib_2 = 1
fib_1 = 1
sum = 0

loop do |fib_0|
	fib_0 = fib_1 + fib_2
	if fib_0 < 4000000 && fib_0 % 2 == 0
		sum += fib_0
	end
	fib_2 = fib_1
	fib_1 = fib_0
	break if fib_0 > 4000000
end

puts sum