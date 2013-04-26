# Brute force

puts "Enter uper limit (lower limit is 2):"
limit = gets.chomp.to_i

array = []

for a in 2..limit
	for b in 2..limit
		array << a ** b
	end
end

result = array.uniq.sort

puts "Unique results: #{result.length}"