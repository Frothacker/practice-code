# Inputs:      A number, n
# Returns:     A string representing the input, with commas inserted into the
#              correct position.
# Prints:      Nothing

loop do

  def commas(num)
    num = num.reverse.chars.each_slice(3).map(&:join).join(",").reverse
  end

  #test questions
=begin
  if __FILE__ == $PROGRAM_NAME
    p commas("123") == "123"
    p commas("1234") == "1,234"
    p commas("12345") == "12,345"
    p commas("123456") == "123,456"
    p commas("1234567") == "1,234,567"
    p commas("12345678") == "12,345,678"
    p commas("123456789") == "123,456,789"
    p commas("1234567890") == "1,234,567,890"
  end
=end

  puts "what number?"
  number = gets.chomp
  puts commas(number)
end # loop is for checking many maual input numbers