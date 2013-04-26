# Brute force but we know an upper limit has to Brute
# 5*9⁵ = 295245

puts "Enter power:"
power = gets.chomp.to_i

sum = 0
digits = []

for i in 2..300000
	digits = i.to_s.split("").map {|digit| digit.to_i}
	sumpowers = 0
	digits.each do |dig|
		sumpowers += dig ** power		
	end
	if i == sumpowers
		puts "Found: #{i}"
		sum += i
	end
end

puts "---"
puts sum