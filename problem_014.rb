def collatz(num, array=[])
	array << num
	return array.length if num == 1
	num.even? ? collatz(num / 2, array) : collatz(3 * num + 1, array)
end

def starting_number(limit)
	maxseed = 0
	maxcollatz = 0

	(1...limit).each do |i|
	  if collatz(i) > maxcollatz
	  	maxcollatz = collatz(i) 
	  	maxseed = i
	  end
	end

	return maxseed
end

p starting_number(1000000)
