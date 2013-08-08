def evenfib_sum(ceiling)
  a, b = 1, 1
  sum = 0
  while ceiling > a do
    sum += a if a%2==0
    b, a = a, a+b
  end

  return sum
end

p evenfib_sum(4000000)