def is_prime?(x)
	is_prime = true
	digits = x.to_s.split("").map {|digit| digit.to_i}
	#Multiples rules check
	if x > 2 && digits.last % 2 == 0
		is_prime = false
	elsif x > 5 && (digits.last == 0 || digits.last == 5)
		is_prime = false
	# Brute force check
	else
		for i in 2..x-1
			if x % i == 0
				is_prime = false
			end
	end	end
	is_prime
end

puts "Which number do you want the prime factors for?"
num = gets.chomp
num = Integer(num)


start = Time.now

primefactor = 1

for i in 2..num
	if num % i == 0 && is_prime?(i)
		puts i
	end
end

system("./script1", "argX")
puts "Duration: #{Time.now - start} seconds"

