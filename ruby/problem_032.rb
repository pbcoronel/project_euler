# Brute force search. The amount of combinations to be searched is 
# aprox. 725000, which isn't that bad. 
# 
# Not working yet.

perms = (1..9).to_a.permutation.to_a
result_array = []
product_array = []

perms.each_with_index do |elem, index|
	p index if index % 10000 == 0
	# One way
	product = elem[5..8].join.to_i
	# Check first possibility
	multiplicand = elem[0..2].join.to_i
	multiplier = elem[3..4].join.to_i
	result_array << product if multiplicand * multiplier == product
	# Check second possibility
	multiplicand = elem[0..1].join.to_i
	multiplier = elem[2..4].join.to_i
	if multiplicand * multiplier == product
		result_array << [multiplicand, multiplier, product]
		product_array << product
	end
end

puts 
p result_array.uniq
p product_array.uniq.inject(:+)


