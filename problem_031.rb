# Brute force but with smart limits ;)
a_val = 1
b_val = 2
c_val = 5
d_val = 10
e_val = 20
f_val = 50
g_val = 100
h_val = 200

ops = 0
count = 0

for a in 0..200
  puts a
  b_lim = (200 - a) / b_val
  b_lim = b_lim.to_i
  for b in 0..b_lim
    c_lim = (200 - b) / c_val
    c_lim = c_lim.to_i
    for c in 0..c_lim
      d_lim = (200 - c) / d_val
      d_lim = d_lim.to_i
      for d in 0..d_lim
        e_lim = (200 - d) / e_val
        e_lim = e_lim.to_i
        for e in 0..e_lim
          f_lim = (200 - e) / f_val
          f_lim = f_lim.to_i
          for f in 0..f_lim
            g_lim = (200 - f) / g_val
            g_lim = g_lim.to_i
            for g in 0..g_lim
              h_lim = (200 - g) / h_val
              h_lim = h_lim.to_i
              for h in 0..h_lim
                value = a*a_val+b*b_val+c*c_val+d*d_val+e*e_val+f*f_val+g*g_val+h*h_val 
                ops += 1
                count += 1 if value == 200
              end
            end
          end
        end
      end
    end
  end
end

puts count
puts ops