# Create a simple temperature convertor. It should function like the example below:

# Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius
# 1
# Enter Celsius Temperature:
# 24
# 24 degrees Celsius is equal to 75.2 degrees Fahrenheit

# c_to_f = Multiply by 9, then divide by 5, then add 32
# f_to_c = Deduct 32, then multiply by 5, then divide by 9

##########################################
def function
print "Type '1' to convert from Celcius to Fahrenheit OR type '2' to convert from Farenheit to Celcius:"

choice = gets.chomp.to_i

	case choice
	when 1
		puts "Enter Celcius Temperature:"
		c_to_f = gets.chomp.to_f
		converted_to_f = ((c_to_f * 9)/5)+32
		puts "degrees Fahrenheit is equal to #{converted_to_f}"
	when 2
		puts "Enter Fahrenheit Temperature:"
		f_to_c = gets.chomp.to_f
		converted_to_c = ((f_to_c - 32)*5)/9
		puts "degrees Ceclius is equal to #{converted_to_c}"
	else
		puts "check yourself foo ... I said enter 1 or 2!"
		#put whole case in function, call the function to take them b
		function
	end
end
function
##########################################


