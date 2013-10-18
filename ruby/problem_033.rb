# Brute force search
array = []

(1...9).each do |d1|
  (1..9).each do |d2|
    (1..9).each do |d3|
      #one side
      num = d1*10.0+d2
      den = d2*10.0+d3
      array << Rational(num,den) if num/den == d1.to_f/d3.to_f && num != den
      #the other side
      num = d1*10.0+d2
      den = d3*10.0+d2
      array << Rational(num,den) if num/den == d1.to_f/d3.to_f && num != den
    end
  end
end

# Multiply and get the value
p array.inject(:*).denominator