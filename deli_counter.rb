# there are people in line
#       should display the current line (FAILED - 1)
#       works with different people in line (FAILED - 2)
#   #take_a_number
#     there is nobody in line
#       should add a person to the line (FAILED - 3)
#     there are already people in line
#       should add a person to the end of the line (FAILED - 4)
#     adding multiple people in a row


def line(katz_deli)
  statement = "The line is currently:"
  empty_line = "The line is currently empty."
  if katz_deli.length == 0
    puts empty_line

  else
    katz_deli.each_with_index do |person, idx|
    statement += " #{idx + 1}. #{person}"
  end
  
  puts statement
  end
end

def take_a_number(katz_deli, name)
  if katz_deli.length == 0 
    katz_deli << name
    puts "Welcome, #{name}. You are number 1 in line."
  elsif katz_deli.length != 0 
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.index(name) +1} in line."
  end
end


def now_serving(katz_deli)
  if katz_deli.length == 0 
    puts "There is nobody waiting to be served!"
  elsif katz_deli.length != 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end