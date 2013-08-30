def sum_square_diff(n)
	squareofsum = (n*(n+1)/2) ** 2
	sumofsquares = (1..n).to_a.map{|e| e**2}.inject(:+)
	return squareofsum - sumofsquares
end

p sum_square_diff(100)

