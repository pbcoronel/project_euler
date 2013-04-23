require "./functions/is_prime.rb"
require "./lib/numbers_and_words.rb"

puts "Enter number to check primality:"
number = gets.chomp
number = Integer(number)

puts is_prime?(number)
