# Brute force. The space to check isn't that big between a and b (1999²)
# and the limit of n is hinted at in the problem (80)

require 'prime'

def qfunc(n,a,b)
	result = n**2 + (a*n) + b
end

result_array = []

maxn = 0
maxa = 0
maxb = 0

for a in -999..999
	puts a
	for b in -999..999
		for n in 0..80
			unless qfunc(n,a,b).prime?
				array = [n,a,b]
				result_array << array
				if n > maxn
					maxn = n 
					maxa = a 
					maxb = b 
					puts "Max n: #{maxn}, a: #{maxa}, b: #{maxb}"
					wait = gets.chomp
				end
				break
			end
		end
	end
end


puts "---"
puts "Max n: #{maxn}, a: #{maxa}, b: #{maxb}"
puts "Product of Coefficients: #{maxa * maxb}"
