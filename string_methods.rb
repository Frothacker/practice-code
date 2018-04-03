#string methods. 
#i have included the functions and a test below each function, 
# "# =>"" indicates expected output


# 1 check if a string is empty, output is true and false
def empty?(str)
  p str.empty?
end
# k = "Sdfsdfsfsdf"
# empty?(k)
# #=> false


# 2 to check if input is a string of not. returns the string if true and nil if false
def string?(obj)
  p String.try_convert(obj)
end
# x = "string"
# y = 234234
# string?(x)
# string?(y)
# #=> "string"
# #=> nil


# 3 check string length
def how_long(str)
  p str.length
end
# f = "cauliflour"
# how_long(f)
# #=> 10


# 4 remove white space from start and end of string
def clean(str)
  p str.strip
end 
# m = "   hello   "
# clean(m)
# #=> "hello"


# 5 reverse the string
def fliparoonie(str)
  p str.reverse
end
# a = "abcdefghijklmnopqrstuvwxyz"
# fliparoonie(a)
# #=> "zyxwvutsrqponmlkjihgfedcba"


# 6 find a way to replace the value of a variable
def replace(str, str2)
  p str.replace(str2)
end
# q = "original"
# u = "I have been replaced"
# replace(q,u)
# #=> "I have been replaced"


# 7 find a way to remove the trailing white space of "mark hermano        "
def clean_end(str)
  p str.rstrip
end
# t = "mark hermano        "
# clean_end(t)
# # => "mark hermano"


# 8 find a way to remove the initial white space of "        mark hermano"
def clean_start(str)
  p str.lstrip
end
# j = "        mark hermano"
# clean_start(j)
# # => "mark hermano"


# 9 find a way to delete a certain letter in a string
def remove(str,letter)
  p str.delete(letter)
end
# alphabet = "abcdefg"
# e = "e"
# remove(alphabet,e)
# #=> "abcdfg"


# 10 revome all whitespace
def bleach(str)
  p str.delete(" ")
end
# i = " I speak very fast "
# bleach(i)
# # => "Ispeakveryfast"

# 11 capitalize
def first_caps(str)
  p str.capitalize
end
# h  = "capitalized"
# first_caps(h)
# # => "capitalized"

# 12 all uppercase
def caps(str)
  p str.upcase
end
# v = "ThiS ShOuLd Be AlL CaPs"
# caps(v)
# # => "THIS SHOULD BE ALL CAPS"

# 13 all lowercase
def small(str)
  p str.downcase
end
# s = "ThiS ShOuLd Be AlL LoWeRcAsE"
# small(s)
# # => "this should be a lowercase"

# 14 Check if string contains a annother string
def contains(long_string,str)
  p long_string.include?(str)
end
# z = "abc"
# n = "abcdefghijklmnopqrstuvwxyz"
# contains(n,z)
# # => true

# 15 Check how many vowels are in any user input string
def vowel_count(long_string)
  p long_string.count("aeiou")
end
# n = "abcdefghijklmnopqrstuvwxyz"
# vowel_count(n)
# # => 5


# 16 how to insert a letter to a specific point in a string.
def put_in(letter,position,str)
  p str.insert(position,letter)
end
# char = "k"
# pos = 3
# string = "vvvvvvvv" 
# put_in(char, pos, string)
# # => "vvvkvvvvv"


# 17 how to make a string to a symbol.
def symbolise(str)
  p str.to_sym
end
# o = "key"
# symbolise(o)
# # => :key

# 18 how to change a letter to string.
def charcater_to_string(char)
  p char.to_s
end
# k = 'k'
# charcater_to_string(k)
# # => "k"

# 19 find a way to check if a string ends with a suffix
def end?(str,suffix)
  p str.end_with?(suffix)
end
# s = "s"
# b = "bananas"
# end?(b, s)
# # => true


p "hello world".encode




