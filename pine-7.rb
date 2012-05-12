def controller
	puts 'For 99 bottles enter "99 bottles"'
	puts 'For deaf grandma enter "deaf grandma"'
	puts 'For leap years enter "leap years"'

	input = gets.chomp

	if input == '99 bottles'
		bottles
	elsif input == 'deaf grandma'
		deaf_grandma
	elsif input == 'leap years'
		leap_years
	else
		puts 'Invalid input, try again.'
		controller
	end
end

def bottles
	count = 99
	while count > 0
		puts "#{count} bottles of beer on the wall #{count} bottles of beer."
		puts 'Take one down and pass it around.'
		count -= 1
	end
	puts "Oh shit...we're out of beer"

end

def deaf_grandma
	puts 'Grandma is listening'
	attempts = 1
	input = gets.chomp
	while input != 'BYE' || attempts < 3
		if input != input.upcase
			puts 'Huh?! speak up, sonny'.upcase
			attempts = 1
		elsif input == 'BYE'
			attempts += 1
			puts "what's that you said?".upcase
		elsif input == input.upcase
			puts "No, not since #{rand(1930..1950)}!".upcase
		end
		input = gets.chomp
	end

	puts 'Goodbye sonny! Come back soon.'.upcase
end

def leap_years
	puts 'Enter a starting year.'
	start_year = gets.chomp
	puts 'Enter an ending year.'
	end_year = gets.chomp

	if start_year > end_year
		puts 'The starting year must be before the end year.'
		leap_years
	end

	years = start_year.to_i..end_year.to_i
	years.each do |year|
		# if the year is divisible by 4 and the year is not divisible by 100 OR the year is divisible by 4 and divisible by 100 and divisble by 400
		if year % 4 == 0 && year % 100 != 0 || year % 4 == 0 && year % 100 == 0 && year % 400 == 0
			puts year
		end
	end

end

controller
