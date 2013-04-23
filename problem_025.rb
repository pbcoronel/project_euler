fib_2 = 1
fib_1 = 1
fib_0 = 0

puts "Enter minimum digits"
digits = gets.chomp.to_i

i = 3

loop do 
	fib_0 = fib_1 + fib_2
	fib_2 = fib_1
	fib_1 = fib_0
	break if fib_0.to_s.length >= digits
	i += 1
end

puts i