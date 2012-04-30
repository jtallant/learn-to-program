def controller
	puts 'For the angry boss program type "angry boss"'
	puts 'For the table of contents type "toc"'

	command = gets.chomp

	if command == 'angry boss'
		angry_boss
	elsif command == 'toc'
		table_of_contents
	else
		puts 'Invalid command, try again.'
		controller
	end
end

def angry_boss
	puts "I'm busy, Whaddaya want!?!?".upcase
	response = gets.chomp
	puts "Whaddaya mean \"#{response}\"?!? You're Fired!!".upcase 
end

def table_of_contents
	lw = 40
	puts 'Table of Contents'.center(lw*2)
	puts 'Chapter 1: Getting Started'.ljust(lw) + 'page 1'.rjust(lw)
	puts 'Chapter 2: Numbers'.ljust(lw) + 'page 9'.rjust(lw)
	puts 'Chapter 3: Letters'.ljust(lw) + 'page 13'.rjust(lw)
end

controller