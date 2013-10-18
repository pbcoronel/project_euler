# this is the easy way of doing this
# Basically, we are looking for the LCM which can be found
# by multiplying the highest power of each prime

require "prime"


def lcm(limit)
  simple_factors = Hash.new(0)

  (2..limit).each do |x|
    hash = Hash[*Prime.prime_division(x).flatten]
    hash.each do |k, v|
      simple_factors[k] = v if simple_factors[k] < v 
    end
  end

  result = 1
  simple_factors.each {|k,v| result *= k ** v}
  return result
end

p lcm(20)
