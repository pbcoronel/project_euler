squareofsum = (100*101/2) ** 2
sumofsquares = 0
(1..100).each {|i| sumofsquares += i**2}

puts squareofsum - sumofsquares