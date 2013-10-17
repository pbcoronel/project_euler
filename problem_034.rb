def factorial(n)
  n == 0 ? 1 : n * factorial(n-1) 
end

def sum_factorial_digits(n)
  digit_factorials = (0..9).to_a.map{|i| factorial(i)}
  digit_array = n.to_s.split("").map{|d| d.to_i}
  sum_array = digit_array.map{|d| digit_factorials[d]}
  sum_array.inject(:+)
end

def sum_of_sums(limit, verbose = false)
  sum = 0
  10.upto(limit) do |i| 
    if i == sum_factorial_digits(i)
      sum += i 
      puts
      puts "#{i} found. New sum is #{sum}." if verbose
      puts
    end
    puts "#{i} checked." if i % 10000 == 0 && verbose
  end
  sum
end

limit = 1000000
p sum_of_sums(limit, true)