# Reverse a string in place. In other words, do not create a new string or use other methods on 
# the string such as reverse. The goal of the problem is to use a loop and the string accessors 
# to figure out which values to swap for other values. Below is the output.

# Enter a string:
# reverse_me
# em_esrever

puts "Enter a string... we gonna reverse dat shit"
	word = gets.chomp
	new_string = ""

	i = 0

	while i < word.length do
		new_string = word[i] + new_string
		i+=1
	end

puts new_string
