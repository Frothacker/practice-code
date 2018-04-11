# Method name: pig_latin
# Inputs:      A string representing a single word (i.e., no spaces)
# Returns:     The word translated into "pig latin"
# Prints:      Nothing

# Note #1
# There are two rules for translating something into "pig latin":
#   1. If a word begins with a consonant or sequence of consonants, move the
#      sequence of consonants  to the end of the word and then append "ay"
#   2. If a word begins with a vowel, just append "ay"


def pig_latin(word)
  # do vowels
  x =  word.chars[0]
  if x =~ /[aeiou]/
    puts word + "ay"
  else
  m = word.index(/[aeiou]/)
  # get consonants before vowel
  puts word.chars.drop(m).join + word.chars[(0..m-1)].join + "ay"
  end # if end
end


# if __FILE__ == $PROGRAM_NAME
#   p pig_latin("happy") == "appyhay"
#   p pig_latin("duck")  == "uckday"
#   p pig_latin("glove") == "oveglay" # Notice what happened to "gl"

#   p pig_latin("egg")   == "eggay"
#   p pig_latin("inbox") == "inboxay"
#   p pig_latin("eight") == "eightay"
# end
# # remember to change "puts" to "return"


pig_latin("happy")
pig_latin("chicken")
pig_latin("funny")
pig_latin("into")
pig_latin("away")
pig_latin("emu")
pig_latin("gloves")
