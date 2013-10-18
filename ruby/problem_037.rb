require 'prime'

def trunc_prime(number)
  return false unless number.prime?
  number_array = number.to_s.split("").map{|d| d.to_i}
  moves = number_array.length - 1
  
  # Remove left to right 
  moves.times do
    number_array.pop
    new_number = number_array.join("").to_i
    return false unless new_number.prime?
  end

  # Reset and remove right to left 
  number_array = number.to_s.split("").map{|d| d.to_i}
  moves.times do
    number_array.shift
    new_number = number_array.join("").to_i
    return false unless new_number.prime?
  end
  true
end

# Find truncatable primes
skip_array = [2,3,5,7]
sum = 0
count = 0
Prime.each do |p|
  next if skip_array.include?(p)
  if trunc_prime(p)
    sum += p
    count += 1
    puts "Found #{count}. Sum is = #{sum}"
  end
  break if count == 11  
end

puts
puts "Finished. Sum is #{sum}"