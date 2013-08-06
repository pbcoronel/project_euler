# Refactored

def fizzbuzz_sum(n)
  (1...n).select{|x| x%3==0 || x%5==0}.inject(:+)
end

puts "Enter ceiling:"
ceiling = gets.chomp.to_i

p fizzbuzz_sum(ceiling)