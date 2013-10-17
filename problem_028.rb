# One could create the diagonal, but there's a rule to every vortex
# If we are on the n side of the square, the sum of its vortices is 
# odd(n)² + (odd(n)² - (odd(n)-1)) + (odd(n)² - 2(odd(n)-1)) + (odd(n)² - 3(odd(n)-1))
# where odd(n) returns the nth odd number.
# So we can just work out from the center and add the vortices for every side.


def vortexsum(dim)

vortexsum = 0

  (1..dim).each do |i|
    unless i % 2 == 0
      # This will make us go through every odd number up to the dimension, equiv. to odd(n)
      if i == 1
        vortexsum += 1
      else
        vortexsum += i ** 2
        vortexsum += i ** 2 - (i-1)
        vortexsum += i ** 2 - 2*(i-1)
        vortexsum += i ** 2 - 3*(i-1)
      end
    end
  end
return vortexsum
end

p vortexsum(1001)