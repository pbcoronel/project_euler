# this is the hard way of doing this

puts "Enter limit:"
limit = gets.chomp.to_i

limit.even? ? i = limit : i = limit +1

until (1..limit).all?{|x| i % x == 0} do 
  i += 2
end

puts i