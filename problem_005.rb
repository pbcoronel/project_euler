# this is the hard way of doing this

def lcm(limit)
	limit.even? ? i = limit : i = limit +1

	until (1..limit).all?{|x| i % x == 0} do 
	  i += 2
	end
	i
end

p lcm(20)