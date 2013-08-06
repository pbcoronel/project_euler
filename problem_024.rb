array = [0,1,2,3,4,5,6,7,8,9]

sorted = array.permutation.to_a.sort

sorted[999999].each do |elem2|
	print elem2
end

puts ""
