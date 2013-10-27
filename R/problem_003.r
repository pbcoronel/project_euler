library(gmp)

largest_prime_factor <- function(number){
	factors <- factorize(number)
	return(max(factors))
}

largest_prime_factor(13195)
largest_prime_factor(600851475143)