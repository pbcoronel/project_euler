require "./functions/is_prime.rb"

puts "Enter number to check primality:"
number = gets.chomp
number = Integer(number)

puts is_prime?(number)
