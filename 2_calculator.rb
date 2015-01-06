# Create a simple calculator that first asks the user what method they would like to use 
# (addition, subtraction, multiplication, division) and then asks the user for two numbers, 
# returning the result of the method with the two numbers. Here is a sample prompt:

# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

def calculator
	puts "Would you like to use this calculator to 'add', 'subtract', 'multiply' or 'divide'?"

	choice = gets.chomp

	case choice
		when "add"
			puts "What's your first number to add?"
			num1 = gets.chomp.to_f
			puts "What's your second number to add?"
			num2 = gets.chomp.to_f
			num3 = num1 + num2
			puts "#{num1} + #{num2} = #{num3}"
		when "subtract"
			puts "What's your first number to subtract?"
			num1 = gets.chomp.to_f
			puts "What's your second number to subtract?"
			num2 = gets.chomp.to_f
			num3 = num1 - num2
			puts "#{num1} - #{num2} = #{num3}"
		when "multiply"
			puts "What's your first number to multiply?"
			num1 = gets.chomp.to_f
			puts "What's your second number to multiply?"
			num2 = gets.chomp.to_f
			num3 = num1 * num2
			puts "#{num1} * #{num2} = #{num3}"
		when "divide"
			puts "What's your first number to divide?"
			num1 = gets.chomp.to_f
			puts "What's your second number to divide?"
			num2 = gets.chomp.to_f
			num3 = num1 / num2
			puts "#{num1} / #{num2} = #{num3}"
		else
			puts "check yo spelling foo ... I said enter 'add', 'subtract', 'multiply' or 'delete':"
			calculator
	end
end
calculator