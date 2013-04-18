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

puts "How many primes do you want?"
num = gets.chomp
num = Integer(num)

found = 0

i = 2

until found == num
	if is_prime?(i)
		found += 1
		puts found.to_s + ", " + i.to_s
	end
	i +=1
end




