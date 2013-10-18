# This solution uses the ruby Prime library. Too easy :/
require "prime"

def max_prime_factor(num)
  factors = Prime.prime_division(num).flatten
  factors = Hash[*factors]
  factors.keys.max
end

p max_prime_factor(600851475143)