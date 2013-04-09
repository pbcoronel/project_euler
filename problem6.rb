squareofsum = (100*101/2) ** 2
sumofsquares = 0
for i in 1..100
	sumofsquares += i**2
end
puts squareofsum - sumofsquares