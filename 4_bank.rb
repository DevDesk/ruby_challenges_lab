# Create a prompt that asks the user if they would like to display their balance, 
# withdraw or deposit. Write three methods to perform these calculations and output 
# the result to the user. Here is a sample output:

# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!
@balance = 0

def banking
	puts "Enter 1 to Show Your Balance, Enter 2 to Make a Withdrawl, Enter 3 to Make a Deposit, 4 to Exit"

	choice = gets.chomp.to_i

	case choice
		when 1
			puts "Your balance is $#{@balance}"
			banking
		when 2
			puts "How much would you like to withdraw?"
			withdrawl = gets.chomp.to_i
			if withdrawl < @balance
				@balance = @balance - withdrawl
				puts "Transaction successful: your new balance is $#{@balance}"
				banking
			else
				puts "Sorry Charlie - You too broke for that manuever ... you've only got $#{@balance} to your name: I'd recommend looking into food stamps!"
				banking
			end
		when 3
			puts "How much would you like to deposit?"
			@balance = gets.chomp.to_i + @balance
			puts "Your new balance is: $#{@balance}"
			banking
		when 4 
			puts "we're done here; goodbye"
		else
			puts "Your fat little fingers made a mistake... try again: 1 for Balance, 2 for Withdrawl, 3 for Deposit or 4 to say 'adios'"
			banking
	end
end
banking