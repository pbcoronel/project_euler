# Using numbers_and_words library by Kirill Lazarev
# https://github.com/kslazarev/numbers_and_words

require 'numbers_and_words'

sum = 0

1000.times do |x|
	x += 1
	num = I18n.with_locale(:en) { x.to_words remove_hyphen: true }
	num.gsub!(/\s/,'')
	puts "#{num}, #{num.length}"
	sum += num.length
end

#add "ands"
sum += 99*3*9

puts sum

