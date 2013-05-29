def collatz(num, array=[])
	array << num
	return array.length if num == 1
	num.even? ? collatz(num / 2, array) : collatz(3 * num + 1, array)
end

maxseed = 0
maxcollatz = 0

(1...1000000).each do |i|
  if collatz(i) > maxcollatz
  	maxcollatz = collatz(i) 
  	maxseed = i
  end
end

p maxseed