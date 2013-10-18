def factorial(n)
  n == 0 ? 1 : n*factorial(n-1)
end

p factorial(100).to_s.split("").map{|d|d.to_i}.inject(:+)