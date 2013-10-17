require 'date'

start = Date.new(1901,1,1)
enddate = Date.new(2000,12,31)

sum = 0

loop do
  sum += 1 if start.wday == 0 && start.mday == 1
  puts start if start.day == 1 && start.mday == 1
  start += 1
  break if start > enddate
end

puts sum