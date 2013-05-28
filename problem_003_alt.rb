# This solution uses the ruby Prime library. Too easy :/
require "prime"

puts "Which number do you want the prime factors for?"
num = gets.chomp.to_i
factors = Prime.prime_division(num).flatten
factors = Hash[*factors]


puts "The unique prime factors are:"
p factors.keys
puts "The largest prime factor is #{factors.keys.max}"
