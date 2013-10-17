# Brute force

def distinct_terms(limit)
  array = []
  (2..limit).each do |a|
    (2..limit).each do |b|
      array << a ** b
    end
  end
  return array.uniq.length
end

p distinct_terms(100)