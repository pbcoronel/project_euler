def collatz(num)
	array = []
	n = num
	loop do 
		array << n
		break if n == 1
		n % 2 == 0 ? n = n/2 : n = 3*n + 1
	end
	return array
end

longest_seq = 0
longest_x = 0

999999.downto(2) do |x|
	puts x if x % 10000 == 0
	seq = collatz(x).length
	if seq > longest_seq
		longest_seq = seq
		longest_x = x
		puts "x: #{x}, seq: #{seq}"
	end

end

puts longest_seq