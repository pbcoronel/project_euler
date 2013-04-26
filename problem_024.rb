array1 = [0,1,2]
array2 = [0,1,2,3,4,5,6,7,8,9]

sorted = array2.permutation.to_a.sort

sorted[999999].each do |elem2|
	print elem2
end

puts ""

=begin
sorted.each do |elem1|
	elem1.each do |elem2|
		print elem2
	end
	puts ""
end
=end