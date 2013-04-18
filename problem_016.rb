num = 2 ** 1000
array = num.to_s.split("").map {|digit| digit.to_i}
sum = 0
array.each do |x|
	sum += x
end
puts sum