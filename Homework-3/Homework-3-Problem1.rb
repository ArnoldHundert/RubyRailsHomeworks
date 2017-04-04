# ************************************** PROBLEM 3 **************************************

# Create a class called Utility.
Add a class method to Utility called count_words that takes a string as a parameter. The method should return a hash where the keys are words and the values are numbers indicating the number of times the key occurred in the input string. For example, Utility.count_words('the good and the bad and the ugly') should return:
{"the" => 3, "good" => 1, "and" => 2, "bad" => 1, "ugly" => 1}
Print the result of calling this method with the string it was the best of times, it was the worst of times.

# ***************************************************************************************************

class Utility
	def count_words(test_string)

	end

end


# ***************************************************************************************************

def count_words(phrase)
  frequency = {}
  array_of_words = phrase.split
  array_of_words.each do |word|
    if frequency[word]
        frequency[word] += 1
    else
        frequency[word] = 1
    end
  end
  frequency
end

puts(count_words('it was the best of times, it was the worst of times'))


