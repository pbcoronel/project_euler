puts "Enter limit"

limit = gets.chomp.to_i
# Just doing some long division...


maxcycle = 0
maxd = 0

for i in 2...limit
  num = 1
  nums = []
  cycle = 0
  loop do 
    divnum = num * 10
    if nums.include?(divnum)
      divnum == 0 ? cycle = 0 : cycle = nums.length - nums.index(divnum)
      break
    end
    nums << divnum
    division = divnum / i
    division = division.to_i
    num = divnum - (division * i)
  end
  puts "#{i}, #{cycle}"
  maxd = i if cycle > maxcycle
  maxcycle = cycle if cycle > maxcycle
end


puts ""
puts "Max d: #{maxd}"
puts "Max cycle: #{maxcycle}"
