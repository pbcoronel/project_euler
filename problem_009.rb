# Using Euclid's Formula:
# a=k(m²-n²),b=k(mn),c=k(m²+n²), where m > n
# The original formula generates all primitive triplets, but 
# with k you can generate all triplets.
#
# Then:
# k(m²-n²)+k(mn)+k(m²+n²)=1000
# After some algebra:
# mn+m²=500/k
# Now, it's all a matter of checking the space 1 < n < m < 500 for
# m and n such that 500 % (mn+m²) = 0

m = 0
n = 0

#Finding m and n
(1..500).each do |i|
  (i+1..500).each do |j|
  if 500 % (j*i+j**2)==0
    m, n = j, i
    break
  end
  end
  break if m > 0 && n > 0
end

#get k, a, b and c
k = 500 / (m*n+m**2)
a = k*(m**2-n**2)
b = k*2*m*n
c = k*(m**2+n**2)

#print result
puts a*b*c


