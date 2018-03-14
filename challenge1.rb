=begin
from codewars:
Given two integers a and b, which can be positive or negative, 
find the sum of all the numbers between including them too and return it. 
If the two numbers are equal return a or b.

a and b are not ordered
=end


puts "input a"
x = gets.chomp.to_i
puts "input b"
y = gets.chomp.to_i


def get_sum(a,b)
  
  # sorting values
  if a == b
   return a
  elsif a < b
    low  = a
    high = b
  else
    low  = b
    high = a
  end

  # counter to add all values between low and high to sum 
  sum = 0
  until low == high
    sum = sum + low
    low += 1
  end
  return sum
  
end

sum_x_y = get_sum(x,y)

puts sum_x_y




