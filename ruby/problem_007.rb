require "prime"

def getprime(n)
    array = Prime.first n
    array.last
end

p getprime(10001)




