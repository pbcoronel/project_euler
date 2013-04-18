def is_pal?(x)
	if x.to_s == x.to_s.reverse
		return true
	else
		return false
	end
end

largest_pal = 0

for i in 100..999
	for j in 100..999
		if is_pal?(i*j) and (i*j) > largest_pal
			largest_pal = i*j
			puts largest_pal.to_s + ", " + i.to_s + ", " + j.to_s
		end
	end
end
