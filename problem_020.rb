def factorial(n)
  return 1 if n.zero?
  1.upto(n).inject(:*)
end

num = factorial(100)
array = num.to_s.split("").map {|digit| digit.to_i}
sum = 0
array.each do |x|
	sum += x
end
puts sum