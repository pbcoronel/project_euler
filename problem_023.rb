require 'prime'

def factors_of(number)
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  full_array = divisors.sort.map{|div| [div, number / div]}
  array = []
  full_array.each do |elem|
  	array << elem[0]
  end
  return array
end

def type(number)
	d_func = factors_of(number)[0..-2].inject(:+)
  if d_func < number
    return 0
  elsif d_func > number
    return 2
  else
    return 1
  end
end

abs1 = []
non_abs = []

for i in 2...28123
  if type(i) == 2
    abs1 << i 
  else
    non_abs << i
  end
end

puts "Found #{abs1.length} abundants."
puts "Max abundant: #{abs1[-1]}"
puts "Max non-abundant: #{non_abs[-1]}"


abs2 = abs1
sums_of_abs = []

abs1.each do |a|
  abs2.each do |b|
    sums_of_abs << a+b
  end
end

puts "Found #{sums_of_abs.length} sums with duplicates."
puts ""

sums_of_abs.uniq!

puts "Found #{sums_of_abs.length} unique sums. Max: #{sums_of_abs[-1]}"
puts ""

puts sums_of_abs[-1]*(sums_of_abs[-1]+1)/2 - sums_of_abs.inject(:+)

sum = 0

for i in 1...28123
  sum += i unless sums_of_abs.include?(i)
end

puts sum
