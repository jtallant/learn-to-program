# puts ''
# puts '### HOURS IN A YEAR ###'
# hours = 24*365
# puts "There are #{hours} hours in a year."

def hours
	puts '### HOURS IN A YEAR ###'
	puts "There are #{24 * 365} hours in a year."
end

def minutes
	puts '### MINUTES IN A DECADE ###'
	puts "There are #{60*24*365*10} minutes in a decade."
end

def seconds
	puts '### SECONDS OLD ###'
	puts "Justin is roughly #{60*60*24*365*23} seconds old."
end

def author_age
	puts '### AUTHORS AGE ###'
	age = 1025000000/60/60/24/365
	puts "The author is #{age} years old."
end

puts ''
hours
puts ''
minutes
puts ''
seconds
puts ''
author_age