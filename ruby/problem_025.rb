def fib_digits(i, a=1, b=1, term=2)
  a.to_s.length == i ? term : fib_digits(i, a+b, a, term+1)
end

p fib_digits(1000)