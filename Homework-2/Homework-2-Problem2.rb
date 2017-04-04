# ************************************** PROBLEM 2 **************************************

# Create a class called Homework.

# Add a method to Homework called shout that takes a string as a parameter and returns the string in all caps. For example, shout('Hello') should return 'HELLO'.

# Add a method to Homework called repeat_string that takes two parameters, a string and an integer. The method should print the given string the number of times indicated by the given integer. For example, repeat_string('Hello', 3) should print:
# Hello
# Hello
# Hello

# Add a method to Homework called calendar that takes two arrays as parameters. The first array should be a list of names of holidays as strings and the second array should a list of the dates of those holidays as strings. The method should return a hash where the keys are the names of the holidays from the first array and the value for each key is the corresponding date from the second array. For example, calendar(['Independence Day', 'Halloween', 'Christmas'], ['4 July', '31 October', '25 December']) should return {'Independence Day' => '4 July', 'Halloween' => '31 October', 'Christmas' => '25 December'}.
# Create a new instance of the Homework class and call each of the previous methods.

# ***************************************************************************************************

class Homework
	def shout(any_string)
		all_caps = any_string.upcase
	end
	def repeat_string(this_string, qty)
		1.upto(qty) do |i|
			puts(i.to_s + ". " + this_string)
		end
		""
	end
	def calendar(holidays_array, dates_array)
		@holidays_array = holidays_array
		@dates_array = dates_array

		holiday_plus_dates_hash = {}

		@holidays_array.each do |each_holiday|

			for i in 0..@holidays_array.length-1
				each_holiday = @holidays_array[i]
				each_date = @dates_array[i]
				holiday_plus_dates_hash[each_holiday] = each_date
			end
		end
		# 0.upto(holiday_array.length-1) do |j|
		# 	holiday_plus_dates_hash[:holiday_array[j]] = dates_array[j]
		# end
		# puts(holiday_plus_dates_hash)
		puts(holiday_plus_dates_hash)
	end
end

my_homework = Homework.new
puts("")
puts(my_homework.shout('hello'))
puts("")
puts(my_homework.repeat_string('Praise God!', 7))

holidays = ['New Years Day', 'Independence Day', 'Halloween', 'Christmas']
holiday_dates = ['January 1', 'July 4', 'October 31', 'December 25']

my_homework.calendar(holidays, holiday_dates)
puts("")

# ***************************************************************************************************







