#assignement 1 recoded because it didn't work due to unsolvable bugs

# age machine - remastered. The first one failed due to unsolvable bugs

#ensuring universal scope for 'youngness' and 'age'
youngness = 0
age = 0

def main

			puts "Good day!, what is your name? please enter it here -->"

			#getting name
			name = gets.chomp

			#ask for age
			puts "Greetings, #{name}
			I am age machine! I will tell you how old you were a certian many years ago! 
			Please enter how many years you would like to go back in time -->"

			# youngness error check to stop user entering string where integer is needed
			loop do

				youngness = gets.chomp.to_i 

				# used for testing
				puts " desired age to be removed is #{youngness}"
				

					#if the value of youngness was a string, then it will be converted to an integer value of 0
					if youngness == 0
					puts "I have not been designed well enough to calculate this phrase.
					Please try a number instead -->"
					else
					break
					end
			end
			

			# prompt to enter age
			puts "Thank you! my brave #{name}! This is a scary journey, have faith. 
			To complete the calculation I need your current age. 
			Please enter it here -->"

			# age error check to stop user entering string where integer is needed
			loop do

				age = gets.chomp.to_i

puts "#{__LINE__} Marked #{age} class=#{age.class} inspect=#{age.inspect}"
				
				# used for testing
				puts " age is #{age}"
				new_age = age

				if age == 0
					puts "I have not been designed well enough to calculate this phrase.
					Please try a number instead -->"
				else 
					young_age = new_age - youngness
puts "#{__LINE__} age=#{age}"
					puts young_age
					return
				end
			end





end

def shutdown

end	



 main



