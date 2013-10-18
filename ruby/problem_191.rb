def prize_string?(string)
  return false if string.scan(/L/).length > 1 # check lateness
  return false unless string.match(/AAA/).nil? # check absences
  true
end

def initial_set
  cases = ["O", "L", "A"]
  array = cases.repeated_permutation(3).to_a
  array.map!{|element| element.join("")}
  array
end

def cull_set(set)
  result_set = []
  set.each do |string|
    result_set << string if prize_string?(string)
  end
  result_set
end

def add_day(set)
  new_set = []
  set.each do |string|
    new_string = string + "O"
    new_set << new_string
    if string[-2..-1] != "AA"
      new_string = string + "A"
      new_set << new_string
    end
    if string.scan(/L/).length == 0
      new_string = string + "L"
      new_set << new_string
    end
  end
  new_set
end

def next_n_days(set, n)
  puts "3 days, #{set.length} possible prize strings"
  runs = n
  runs.times do |r|
    start_time = Time.now
    setdup = set.dup
    set = add_day(setdup)
    end_time = Time.now
    run_time = end_time - start_time
    puts "#{3+r+1} days, #{set.length} possible prize strings"
    puts "Last run took #{run_time} seconds. Next one should take #{run_time * 2} seconds."
  end
end

first_set = cull_set(initial_set)

next_n_days(first_set,27)
# next_n_days(first_set,2)