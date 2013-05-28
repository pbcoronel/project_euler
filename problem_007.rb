require "prime"

puts "How many primes do you want?"
num = gets.chomp.to_i

found, i = 0, 1

until found == num
  i +=1
  found += 1 if i.prime?
end

puts "Prime number #{num}: #{i}"




