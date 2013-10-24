even_fibs_sum <- function(limit) {
	fibs <- c(1,2)
	nextfib <- sum(tail(fibs,n=2))
	while (nextfib < limit) {
		fibs <- append(fibs, nextfib)
		nextfib <- sum(tail(fibs,n=2))	
	}
	return(sum(fibs[fibs %% 2 == 0]))
}

even_fibs_sum(100)
even_fibs_sum(4000000)

