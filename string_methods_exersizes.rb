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
p numbers.select { |x| x.even?}.reverse





# 8. Now change your code so that you get the following output:[10, 8, 4, 2]
#      Bonus: Find at least three different solutions for this last change.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# 8. solution 1
  numbers.delete(6)
p numbers.select { |x| x.even?}.reverse

# 8. solution 2
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each do |x| 
  if x % 3 == 0 && x % 2 == 0
    numbers.delete(x)
  end
end
p numbers.select { |x| x.even?}.reverse

# 8. solution 3
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each do |x| 
  if x == 6
    numbers.delete(x)
  end
end
p numbers.select { |x| x.even?}.reverse

# 8. solution 4
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.delete_at(5)
p numbers.select { |x| x.even?}.reverse

#8. solution 5 
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each do |x| 
  if x % 3 == 0 && x % 2 == 0
    numbers.delete_at(numbers.find_index(6))
  end
end
p numbers.select { |x| x.even?}.reverse

#9. create hash as seen below and print out "dos"
dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }
  p dictionary[:two]



#10. write some code so that "puts dictionary[:four]" will print out "cuatro"
  dictionary[:four] = "cuatro"
  puts dictionary[:four]      
    

  
#11. Change your code so that it prints out the following 'Cuatro' with capital c
  puts dictionary[:four].capitalize

# 12. There is a method on hashes that allows to check if a certain key is defined on the hash. 
 dictionary.key?(:one)
 dictionary.has_key?(:two)
# => true
# => true
    

# 13. There is a method on hashes that flips keys and values. fill in the following line using that method:
dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }
dictionary.invert  
p dictionary

# output => { 'uno' => :one, 'dos' => :two, 'tres' => :three } 
    
# 14. Write a method greet that takes a name, prepends "Hello ", and appends an exclamation mark "!": 

#14 solution 1
def greet(name)
  puts "Hello #{name}!"
end
greet("Daniel")

# 14 solution 2
def greet(name)
  puts name.prepend("Hello ") + ("!")
end
greet("Daniel")


# 15. Now change your method so that instead of always using "Hello " it picks a random string from 
# the array ["Hello", "Hi", "Ohai", "ZOMG"].
 puts "-".rjust(19, "-")
# 15 solution 1
def greet(name)
  random = ["Hello", "Hi", "Ohai", "ZOMG"]
  random.shuffle!
  puts "#{random[1]} #{name}!"
end
greet("Daniel")

# 15 solution 2
def greet(name)
  random = ["Hello", "Hi", "Ohai", "ZOMG"]
  puts "#{random[rand(4)]} #{name}!"
end
greet("Daniel")



# 16. Write a method that converts a distance (a number) from miles to kilometers:
    def miles_to_kilometers(miles)
      miles * 1.60934
    end
    puts miles_to_kilometers(25) # This should print out: 40.2336
    
# 17. Write a method leap_year? that takes a year (a number), and calculates if it is a leap year.
  def leap_year?(year)
    (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0) 
  end
  p leap_year?(2012) # => true
  p leap_year?(2015) # => false
#bonus years
  p leap_year?(2000) # => true
  p leap_year?(1900) # => false


# 18. Create a new array: words = ["one", "two", "three", "four", "five"]
# create code so that you get the following output: ["one", "three", "five"]
words = ["one", "two", "three", "four", "five"]
[3,1].each { |x| words.delete_at(x)} 
p words

# words = ["one", "two", "three", "four", "five"]
# p ([4, 2, 0].each {|x| words.select.with_index(x)})
    
  
# 19. Change your code to get :["One", "Three", "Five"] (capitalized)
words = ["one", "two", "three", "four", "five"]
words.each { |s| s.capitalize!} 
p words
        
# 20. Change your code to output: ["One <3", "Three <3", "Five <3"]  
words = ["one", "two", "three", "four", "five"]
words.each { |s| s.reverse! and s.prepend("3<").reverse! } 
p words




