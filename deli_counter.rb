katz_deli = []

def line(katz_deli)
  if katz_deli.length >= 1
    katz_deli.each do |name, index|
    puts "The line is currently: #{index + 1}. #{name}"
  end
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, new_name)
  katz_deli.push(new_name)
    puts "Welcome, #{new_name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    katz_deli.each do |name|
      puts "Currently serving #{name}."
      katz_deli.shift
    end
    puts "There is nobody waiting to be served!"
end
