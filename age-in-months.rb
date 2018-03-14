
name = " "
age = 0
months = 0

name = gets
puts "Hello! #{name}, Welocome to the magical year to month machine! What is your age?" 
age = gets

months = age.to_i * 12
print "Well, #{name}, it apears you are #{months} months old! 
Keep in mind I do not calculate leap years :) 
"

puts "would you like to calculate leap years?"

answer = gets

print "Too bad, i am not yet good enough. Thank you for using the magical age to month machine!"
