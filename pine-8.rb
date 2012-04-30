def controller
	puts 'For the array sorter type "sorter"'
	puts 'For the table of contents type "toc"'

	input = gets.chomp

	if input == 'sorter'
		sorter
	elsif input == 'toc'
		table_of_contents
	end
end

def sorter
	puts 'Type something and press enter to put it inside the array. Keep doing that until you get bored then press enter on a blank line. The items will be sorted for you.'
	array = []
	input = gets.chomp
	while input != ''
		array << input
		input = gets.chomp
	end
	puts array.sort
end

def table_of_contents
	toc = ['Table of Contents', 'Chapter 1: Getting Started', 'page 1', 'Chapter 2: Numbers', 'page 9', 'Chapter 3: Letters', 'page 13']
	puts toc[0].center(80)
	puts toc[1].ljust(40) + toc[2].rjust(40)
	puts toc[3].ljust(40) + toc[4].rjust(40)
	puts toc[5].ljust(40) + toc[6].rjust(40)
end

controller