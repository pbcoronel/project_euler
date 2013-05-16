# this code has been refactored 1 time

def fizzbuzz_sum(n)
  (1...n).to_a.select{|x| x%3==0 || x%5==0}.inject(:+)
end

puts "Enter ceiling:"
ceiling = gets.chomp.to_i

p fizzbuzz_sum(ceiling)