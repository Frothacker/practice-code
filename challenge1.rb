=begin
from codewars:
Given two integers a and b, which can be positive or negative, 
find the sum of all the numbers between including them too and return it. 
If the two numbers are equal return a or b.

a and b are not ordered
=end 

# for adding user inputs
puts "input a"
x = gets.chomp.to_i
puts "input b"
y = gets.chomp.to_i

def get_sum(a,b)
  low  = 0
  high = 0
  
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

  # to ensure high value has been added to the sum
  sum    = high

  # counter to add all values between low and high to sum 
  until low == high
    sum = sum + low
    low += 1
  end

  return sum
end

=begin

# tests + explained
puts get_sum(1, 0)    # 1 + 0 = 1
puts get_sum(1, 2)    # 1 + 2 = 3
puts get_sum(0, 1)    # 0 + 1 = 1
puts get_sum(1, 1)    # 1 Since both are same
puts get_sum(-1, 0)   # -1 + 0 = -1
puts get_sum(-1, 2)   # -1 + 0 + 1 + 2 = 2



# output: 1 2 1 1 -1 2
puts "#{get_sum(1, 0)} #{get_sum(1, 2)} #{get_sum(0, 1)} #{get_sum(1, 1)} #{get_sum(-1, 0)} #{get_sum(-1, 2)}"

=end




