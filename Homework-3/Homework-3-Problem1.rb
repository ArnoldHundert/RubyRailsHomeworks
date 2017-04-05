# ************************************** PROBLEM 3 **************************************

# Create a class called Utility.
# Add a class method to Utility called count_words that takes a string as a parameter. The method should return a hash where the keys are words and the values are numbers indicating the number of times the key occurred in the input string. For example, Utility.count_words('the good and the bad and the ugly') should return:
# {"the" => 3, "good" => 1, "and" => 2, "bad" => 1, "ugly" => 1}
# Print the result of calling this method with the string it was the best of times, it was the worst of times.

# ***************************************************************************************************

class Utility
	def count_words(string_to_count)
		word_count = {}
		words_array = string_to_count.split
		words_array.each do |word|
			if word_count[word]
				word_count[word] += 1
			else
				word_count[word] = 1
			end
		end
		word_count
	end
end

my_utility = Utility.new
puts("")
puts(my_utility.count_words('it was the best of times, it was the worst of times'))
puts("")

# ***************************************************************************************************




