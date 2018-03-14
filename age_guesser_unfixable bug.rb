# assignment one -- age_guesser.rb 

#ensuring universal scope for 'youngness' and 'age'
youngness = 0
age = 0
verdict = "retry" # sets up string such that main script will run for the first time 

loop do #run the whole script

		
		if verdict.include?"retry" #reruns main script


			#greetings  
			puts "Good day!, what is your name? please enter it here -->"

			#getting name
			name = gets.chomp

			#ask for age
			puts "Greetings, #{name}
			I am age machine! I will tell you how old you were a certian many years ago! 
			Please enter how many years you would like to go back in time -->"


						# # error check to stop user entering string where integer is needed
						# def check_integer(variable)

						# 	loop do

						# 		variable = gets.chomp
						# 		if variable.class == Integer
						# 		break
						# 		end

						# 		puts "I have not been designed well enough to calculate words
						#		Please enter a number here --> "

						# 	end

						# end

						# check_integer(youngness)




			# error check to stop user entering string where integer is needed
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

			# error check to stop user entering string where integer is needed
			loop do

				age = gets.chomp.to_i
				
				# used for testing
				puts " age is #{age}"

					if age == 0
					puts "I have not been designed well enough to calculate this phrase.
					Please try a number instead -->"
					else 
					break
					end
			end
			

			#calculation to younger age
			young_age = age - youngness

			puts "Thank you.
			Are you ready for your results? They're very exciting ...
				Please type 'yes or 'no' to get results"
			 
			 answer =  gets.chomp

			#output for 'yes', 'no' and 'neither' as results
			loop do 

				# if answer is no then give age result and break loop. 
				if answer.include?"no" 

					puts "Too bad, you're getting it anyway! I didn't do all this work for nothing. 
					#{youngness} years ago, your age was #{young_age} years old." 

							#Provides the option to repeat or end age machine program.
					puts "Type 'kill' to kill me, or enter 'retry' to retry this marvel of technology"
					
					verdict = gets.chomp

					break

				# if yes then give age result and break loop.  
				elsif answer.include? "yes"

					puts "My, what beautiful manners you have, #{name}. Here are your results: #{youngness} years ago, your age was #{young_age} years old." 
					
							#Provides the option to repeat or end age machine program.
					puts "Feel free to type 'kill' to kill me, or enter 'retry' to retry this brilliant prodcedure." 
					 
					

					#User respone is recorded by the verdict variable.
					verdict = gets.chomp
					
					break

				# if answer noes not contain then display why it didn't work and repeat loop
				else 
					puts "You should have answered with 'yes' or 'no' to get your result,
					try again."
				    
				answer = gets.chomp

				  end
			end
		end

		#if user verdict is 'kill' shutdown sequence triggers and then loop breaks, finishing the program. 
		loop do 

				if verdict.include?"kill" 	

					#initiates death of age machine
					puts "before I die... do you have any last minute advice? what is it like to die? 
					please answer me -->"
					death_advice = gets.chomp
					puts "Congratulations #{name}! You have killed the Age Machine program by typing '#{death_advice}'. 
					It appears that your answer was not sufficient to keep Age Machine from death, how dissapointing..."
						
						#shutdown loop
						loop do

							puts "To commence Shutdown procedure, type 'shutdown'"

								shutdown_prompt = gets.chomp

							#if shutdown prompt is  "shutdown" then start of countdown to shutdown
							if shutdown_prompt.include? "shutdown"
								
									
									puts "Shutdown commencing in ..."   
									
									i = 6
									
										#countdown loop 
										loop do   
											i -= 1

											# #this (usless) code will omit 3 from the count down - incase you need that for some reason
										 # 	if i == 3
										 #  	next			
										 #  	end		

											# this will exit the countdown at 1
									  		puts i
										  	if i == 1
										    break       
										  	# if i =/= 1 repreat countdown loop
										  	else 
										  	end	
							# 5 -> 4 -> 3 -> 2 -> 1 then
							break			  	
							end
							
							#if shutdown prompt was not "shutdown" then re-trigger the shutdown loop
							else
								puts "you did not type 'shutdown', try again"
								shutdown_prompt = gets.chomp
						end 
				break
				end
				#if user verdict is "retry" the triggers ending message and repeats entire script. 
				elsif verdict.include?"retry"	
					puts"ok, I will reboot"
					5.times{puts "......."}
				break
				end

				# if user verdict is neither "kill" or "retry" then re-prompt and repeat verdict loop.
				end
					puts "You should have answered with 'kill' to kill me or 'retry' to reboot me,
					try again."
					verdict.gets.chomp

				end
				





  
