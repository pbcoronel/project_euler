def fizzbuzz_sum(n):
    return sum([x for x in range(n) if x%3==0 or x%5==0])
    
print fizzbuzz_sum(1000)