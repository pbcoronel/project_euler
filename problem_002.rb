def evenfib_sum(ceiling)
  curr = 1
  succ = 2

  sum = 0

  until curr > ceiling do 
    curr, succ = succ, curr + succ
	sum += curr if curr % 2 == 0
  end

  return sum
end

puts "Enter ceiling:"
ceiling = gets.chomp.to_i

p evenfib_sum(ceiling)