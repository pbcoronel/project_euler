contents = File.read('./supp_files/prob22_names.txt').gsub("\"", "").split(",").sort

def word_val(str)
	arr1 = str.split("")
	sum = 0
	arr1.each {|s| sum += s.ord - 64}
	return sum
end

sum = 0

for i in 0...contents.length
	sum += word_val(contents[i])*(i+1)
end

puts sum


