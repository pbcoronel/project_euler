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

def d_function(number)
  factors_of(number)[0..-2].inject(:+)
end

puts "Enter ceiling:"
ceiling = gets.chomp.to_i
puts "---"

arr1 = []

for i in 2...ceiling
  arr1 << [i,d_function(i)]
end

arr2 = arr1

sum = 0

arr1.each do |elem|
  arr2.each do |elem2|
    sum += elem[0] if elem[0] == elem2[1] && elem[1] == elem2[0] && elem[0] != elem[1]
  end
end

puts sum


