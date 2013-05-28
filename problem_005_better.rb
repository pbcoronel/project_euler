# this is the easy way of doing this
# Basically, we are looking for the LCM which can be found
# by multiplying the highest power of each prime

require "prime"

puts "Enter limit:"
limit = gets.chomp.to_i

simple_factors = {}

(2..limit).each do |x|
  hash = Hash[*Prime.prime_division(x).flatten]
  hash.each do |k, v|
  	simple_factors[k] = v if simple_factors[k].nil? || simple_factors[k] < v 
  end
end

result = 1

simple_factors.each do |k,v|
  result *= k ** v
end

p result
