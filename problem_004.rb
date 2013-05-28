#refactoring: 
# 1.- Made more efficient (only check half the search space)
# 2.- Better looking code

def is_pal?(x)
  x.to_s == x.to_s.reverse	
end

largest_pal = [0,0,0]

(100..999).each do |i|
  (i..999).each do |j|
    largest_pal = [i*j, i, j] if is_pal?(i*j) && (i*j) > largest_pal[0]
  end
end


p largest_pal
