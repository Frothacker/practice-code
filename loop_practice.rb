# If you leave a loop running, your system will crash." 

#endless function
def endless[
				loop do 
			puts "Your answer was not satisfactory: this will print endlessly until you hit control + c"
				end
			]

# prompt to type a word 
puts "Please type a word"

#prompt to type a word 
secret_word = gets.chomp

puts "'#{secret_word}' is your secret word"

loop do 
			
			puts "You have now entered the danger zone. 
			Typing anything apart from the secret word will initiate a booby trap. Tread carefully..."
		secret_answer = gets
		
		if secret_answer.include?"#{secret_word}"
			puts "Consider yourself lucky ... Type 'restart' to re-test your luck. 
			Your correct answer has bourght you some time: You have 7 seconds till you spring the trap. 
			Do not make a mistake. " 
			




			break
	end

				endless
		
end