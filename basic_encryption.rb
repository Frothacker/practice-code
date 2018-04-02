# Method name: rot13
# Inputs:      A String to be encoded in ROT13
# Returns:     A ROT13-encoded string
# Prints:      Nothing

# ROT13 is short for "rotate 13" and is the simplest example of a
# "Caesar cipher".  See http://en.wikipedia.org/wiki/ROT13

# ROT13 works by taking a string and "rotating" all the characters in that
# string 13 places to the right in the alphabet, with "z" wrapping around to
# the beginning of the alphabet.
#
# In other words, every letter from the top row in this table is replaced with
# the corresponding letter in the bottom row
#
#   ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
#   NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm
    


def rot(string,x)
  big_alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  small_alpha = "abcdefghijklmnopqrstuvwxyz"

  
  up_crypt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  dn_crypt = "abcdefghijklmnopqrstuvwxyz"
  #change order of characters moving right for every x
  x.times do 
    up_crypt = up_crypt.prepend(up_crypt.chars.pop)  
    up_crypt = up_crypt.chop
    dn_crypt = dn_crypt.prepend(dn_crypt.chars.pop) 
    dn_crypt = dn_crypt.chop
  end

  up_crypt = up_crypt.chars #array
  dn_crypt = dn_crypt.chars #array

  #mapping encrypted alphabet to real alphabet
  up_hash = up_crypt.zip(big_alpha.chars).to_h #hash
  down_hash = dn_crypt.zip(small_alpha.chars).to_h #hash

  answer = ""
  string.chars.each do |x|
     if down_hash[x] != nil
      answer.prepend(down_hash[x])
    elsif up_hash[x] != nil
      answer.prepend(up_hash[x])
    else
      answer.prepend(" ")
    end
  end
return answer.reverse.to_s
end

# See http://www.rot-n.com/ to generate test inputs and outputs

if __FILE__ == $PROGRAM_NAME
  p rot("The Quick Brown Fox Jumps Over The Lazy Dog",13) ==
    "Gur Dhvpx Oebja Sbk Whzcf Bire Gur Ynml Qbt"

  p rot("ahaaaa",0) ==
    "ahaaaa"
end


 









