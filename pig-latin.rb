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
  if x.include?("a") || x.include?("e") || x.include?("i") || x.include?("o") || x.include?("u")
    puts word.delete(" ") << "ay"
  else

  # count consanants before vowel
  switch = true
  counter = 0
  
  until switch == false do
    c = word.chars[counter]
    if c =~ /a/ || c =~ /e/ || c =~ /i/ || c =~ /o/ || c =~ /u/ then
      switch = false
    elsif c != /a/ || c != /e/ || c != /i/ || c != /o/ || c != /u/ && c.length == 1 then
      counter += 1
    end
  end #until end

  # get consonants before vowel
  consonants = word.chars[(0..counter-1)].join
  #remove those consonants
  counter.times{ word = word.reverse.chop.reverse}
  #re-arrange to make pig word
  puts word + consonants << "ay"
  end # if end
end

pig_latin("happy")
pig_latin("chicken")
pig_latin("funny")
pig_latin("into")
pig_latin("away")
pig_latin("emu")
pig_latin("gloves")




# if __FILE__ == $PROGRAM_NAME
#   p pig_latin("happy") == "appyhay"
#   p pig_latin("duck")  == "uckday"
#   p pig_latin("glove") == "oveglay" # Notice what happened to "gl"

#   p pig_latin("egg")   == "eggay"
#   p pig_latin("inbox") == "inboxay"
#   p pig_latin("eight") == "eightay"
# end
