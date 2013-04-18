puts "Enter limit:"
limit = gets.chomp
limit = Integer(limit)

x = limit

loop do
	test = 1
	for i in 1..limit
		if x % i == 0
			test *= 1
		else
			test *= 0
			break
		end
	end
	break if test == 1
	x += 1	
end

puts x