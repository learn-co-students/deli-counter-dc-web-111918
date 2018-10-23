katz_deli = []
require 'pry'

def line(katz_deli)
  if katz_deli.length >= 1
    lineup = ""
    katz_deli.each_with_index do |name, index|
    lineup += " #{index + 1}. #{name}"
  end
    puts "The line is currently:#{lineup}"
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, new_name)
  katz_deli.push(new_name)
    puts "Welcome, #{new_name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.length >= 1
      puts "Currently serving #{katz_deli.shift}."
    else
      puts "There is nobody waiting to be served!"
    end
end
