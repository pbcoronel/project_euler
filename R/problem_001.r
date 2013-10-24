fizzbuzz_sum <- function(limit) {
	nums <- 1:(limit-1)
	fizzbuzz <- nums[nums %% 3 == 0 | nums %% 5 == 0]
	return(sum(fizzbuzz))
}

fizzbuzz_sum(10)
fizzbuzz_sum(1000)