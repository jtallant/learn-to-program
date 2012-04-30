def greeting
	puts 'What is your first name?'
	first = gets.chomp
	puts 'What is your middle name?'
	middle = gets.chomp
	puts 'What is your last name?'
	last = gets.chomp

	puts "Pleased to meet you #{first} #{middle} #{last}."
	chars = first.length + middle.length + last.length
	puts "P.S. There are #{chars} characters in your name."
end

def controller
	puts 'For the greeting program type "greeting"'
	puts 'For the numbers program type "numbers"'
	response = gets.chomp
	if response == 'greeting'
		greeting
	elsif response == 'numbers'
		numbers
	else
		puts 'Invalid command, try again.'
		controller
	end
end

def numbers
	puts 'What is your favorite number sir?'
	puts '.....'
	ask_gender
	favorite = gets.chomp
	puts "Ahh I see, your favorite number is #{favorite}"
	puts "Interesting your favorite number is so close to the number #{favorite.to_i + 1}, did you know that in ancient Egypt the number #{favorite.to_i + 1} was worshipped as a divine number that helped Egyptian astronomers unlock many secrets about the stars? That number occured more than any number in the algorithms they used to predict cosmological events. Perhaps #{favorite.to_i + 1} would be a better favorite number?"
	puts 'And yes that was completely made up.'
end

def ask_gender
	puts 'Wait a minute are you a girl? (yes/no)'
	answer = gets.chomp
	if answer == 'yes'
		puts 'Okay then sorry about that. What is your favorite number madam?'
	elsif answer == 'no'
		puts 'Okay then, let us continue. What is your favorite number?'
	else
		puts 'Did you not see the (yes/no) next to the question you idiot? That means I will only accept a yes or no answer. Try again.'
		ask_gender
	end
end

controller