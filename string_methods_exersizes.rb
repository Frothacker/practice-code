# 1. prepend the string "Learning " to the string "Ruby"
p "Ruby".prepend("Learning ")



# 2. Using that method that revomes characters, turn the string "Learning Ruby" into the string 
# "Lrnng Rb".
p "Learning Ruby".delete("aeiou")



# 3. There is a method that allows to justify a string, and padding it with another string.
# Find that method and use it on the string "Ruby" together with "<3" so that you get the 
# following string back:
    # "Ruby<3<3<3"
p "Ruby".ljust(10, "<3")



# 4. when you run your code (run ruby arrays_1-1.rb), you get the following output: 5
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers[4]

 

# 5.Add another line before the line that you just added, so that when you run your code, 
# you get the output: 99
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers[4] = 99
p numbers[4]



# 6. Make a new array, like below
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# apply methods so that you get the following output: [2, 4, 6, 8, 10]
numbers.each do |x| 
  if x.odd?
    numbers.delete(x)
  end
end
p numbers       
    


#7.  Now edit the code you just added to get the following output: [10, 8, 6, 4, 2]
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# apply methods so that you get the following output: [2, 4, 6, 8, 10]
numbers.each do |x| 
  if x.odd?
    numbers.delete(x)
  end
end
p numbers.reverse



# 8. Now change your code so that you get the following output:[10, 8, 4, 2]
#      Bonus: Find at least three different solutions for this last change.

# 8. solution 1
numbers.each do |x| 
  if x.odd?
    numbers.delete(x)
  end
  numbers.delete(6)
end
p numbers.reverse

# 8. solution 2
numbers.each do |x| 
  if x.odd?
    numbers.delete(x)
  elsif x % 3 == 0 && x % 2 == 0
    numbers.delete(x)
  end
end
p numbers.reverse

# 8. solution 3
numbers.each do |x| 
  case x
  when x.odd?
    numbers.delete(x) 
  when x == 6
    numbers.delete(x)
  end
end
p numbers.reverse

# 8. solution 4
numbers.each do |x| 
  if x.odd?
    numbers.delete(x) 
  end
  numbers.delete_at(5)
end
p numbers.reverse

#8. solution 5 
numbers.each do |x| 
  if x.odd?
    numbers.delete(x) 
  elsif x % 3 == 0 && x % 2 == 0
    numbers.delete_at(numbers.find_index(6))
  end
end
p numbers.reverse




#9. create hash as seen below and print out "dos"
dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }
  p dictionary[:two]



#10. write some code so that "puts dictionary[:four]" will print out "cuatro"
  dictionary[:four] = "cuatro"
  puts dictionary[:four]      
    










