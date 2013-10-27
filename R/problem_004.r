is_palindrome <- function(number) {
	number_string <- as.character(number)
	sp_num_string <- strsplit(number_string, NULL)[[1]]
	rev_num_string <- paste(rev(sp_num_string), collapse='')
	return(rev_num_string == number_string)
}

largest_palindrome_product <-function(initial, ending) {
	nums <- ending - initial + 1
	a <- matrix(initial:ending,nums,1)
	b <- matrix(initial:ending,1,nums)
	mat <- a%*%b
	palindromes <- mat[lapply(mat, is_palindrome) == T]
	return(max(palindromes))
}

largest_palindrome_product(100,999)


