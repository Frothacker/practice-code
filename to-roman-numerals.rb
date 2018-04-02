
# Method name: to_roman
# Inputs:      A number
# Returns:     A String representing the number in roman numerals
# Prints:      Nothing

# to_roman takes a number as input and returns that number using Roman numerals
# See http://en.wikipedia.org/wiki/Roman_numerals
loop do

  def to_roman(num)
    roman = ""
    num.times { roman.prepend("I") }
     
  #initial solution
    # roman.gsub!( "I" * 1000, "M")
    # roman.gsub!( "I" * 500, "D")
    # roman.gsub!( "I" * 100, "C")
    # roman.gsub!( "I" * 50, "L")
    # roman.gsub!( "I" * 10, "X")
    # roman.gsub!( "I" * 9, "IV")
    # roman.gsub!( "I" * 8, "VIII")
    # roman.gsub!( "I" * 7, "VII")
    # roman.gsub!( "I" * 6, "VI")
    # roman.gsub!( "I" * 5, "V")
    # roman.gsub!( "I" * 4, "IV")
    
  # revised solution
    replacement = { 
      "I" * 1000 => "M",
      "I" * 500 => "D",
      "I" * 100 => "C",
      "I" * 50 => "L",
      "I" * 10 => "X",
      "I" * 9 => "IV",
      "I" * 8 => "VIII",
      "I" * 7 => "VII",
      "I" * 6 => "VI",
      "I" * 5 => "V",
      "I" * 4 => "IV" }
    replacement.each do |i , numeral| 
      roman.gsub!(i , numeral) 
    end

    puts roman
  end

  puts "what number"
  number = gets.chomp.to_i
  to_roman(number)

  if __FILE__ == $PROGRAM_NAME
    # What are some test cases?
  end

end #loop this is infinite loop. used for trying many roman numerals. 
    #use 'control' + 'c' to stop it. 


