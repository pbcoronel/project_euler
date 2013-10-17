#refactoring: 
# 1.- Made more efficient (only check half the search space)
# 2.- Better looking code

def is_pal?(x)
  x.to_s == x.to_s.reverse  
end

def largest_pal()
  array = [0,0,0]
  (100..999).each do |i|
    (i..999).each do |j|
      array = [i*j, i, j] if is_pal?(i*j) && (i*j) > array[0]
    end
  end
  array.max
end

p largest_pal()
