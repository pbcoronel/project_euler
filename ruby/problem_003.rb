# Ad-hoc prime checker. Using the library is, of course, much more efficient
# but this works ok for now.

def is_prime?(x)
  digits = x.to_s.split("").map {|digit| digit.to_i}
  #Multiples rules check
  return false if x > 2 && digits.last % 2 == 0
  return false if x > 3 && digits.inject(:+) % 3 == 0
  return false if x > 5 && (digits.last == 0 || digits.last == 5)
  return false if (2...x).select{|n| x%n==0}.length != 0  
  true
end

def max_prime_factor(num)
  factors = []

  while num > 1 do
    pfactor = (2..num).find {|n| num % n == 0}
    factors << pfactor
    num = num / pfactor
  end
  factors.uniq.max
end

p max_prime_factor(600851475143)

