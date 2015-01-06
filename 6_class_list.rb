# Create an array of students and allow the user to keep adding new students to the array. 
# After each student is added, display the array to the user (use the inspect method to 
# 	display the array). If the user deciders to not add an additional student, display 
# the list of the students and the index that each student is at (check out .each_with_index) 
# Here is a sample prompt:

# Would you like to add another student?
# yes
# What is the student's name?
# Taco
# The array of instructors now looks like: ["Taco"]
# Would you like to add another student?
# no
# Here is a summary of your student array:
# The student at index 0 is Taco

@student_array = []

def add_student
	print "Add a student: "
		new_student = gets.chomp
		@student_array.push(new_student)
		puts @student_array.inspect
		puts "-"*25
	def adding_another
	print "Add another (y/n)? "
		add_another = gets.chomp.downcase
			if add_another == "y"
				add_student
			elsif add_another == "n"
				puts "Here is a summary of your student array:"
				@student_array.each_with_index{|name, index| puts "The student at index #{index} is #{name}"}
			else
				puts "Sorry, come again?  Add another (y/n)? "
				adding_another
			end
	end
	adding_another
end
add_student
