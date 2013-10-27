def fizzbuzz_sum(n):
    fizzbuzz = [x for x in range(n) if x%3==0 or x%5==0]
    return sum(fizzbuzz)
    
print fizzbuzz_sum(1000)