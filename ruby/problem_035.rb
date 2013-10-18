require 'prime'

def circular_prime(number)
  number_array = number.to_s.split("").map{|d| d.to_i}
  rotations = number_array.length
  rotations.times do |i|
    return false unless number_array.join("").to_i.prime?
    new_lead = number_array.pop
    number_array.unshift(new_lead)
  end
  true
end

def count_circular_primes(limit)
  primes = Prime.take_while {|p| p < limit }
  primes.select{|p| circular_prime(p)}.length
end

limit = 1000000
p count_circular_primes(limit)