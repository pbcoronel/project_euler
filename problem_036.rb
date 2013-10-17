def is_palindrome?(string)
  string == string.reverse
end

def binary(number)
  number.to_s(2)
end

def two_base_palindrome(number)
  is_palindrome?(number.to_s) && is_palindrome?(binary(number))
end

def sum_tbps(limit)
  sum = 0
  (1..limit).each do |n|
    sum += n if two_base_palindrome(n)
  end
  sum
end

p sum_tbps(1000000)