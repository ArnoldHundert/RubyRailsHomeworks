# ************************************** PROBLEM 2 **************************************

# Create a class called Animal.
# Add an instance method to Animal called sound that returns a string indicating the sound an animal
# makes.
# Add an instance method to Animal called speak that prints the string The animal says: followed by
# the string returned by the sound method.
# Now create two subclasses of Animal (that is, classes whose parent class is Animal).
# Override the sound method of each of your subclasses to return a string appropriate for that
# particular animal instead of the string returned by the parent class.
# Call the speak method on an instance of each of your subclasses.

# ***************************************************************************************************

class Animal
	def sound(which_animal)
		case which_animal
			when "dog"
			  return 'bark'
			when "cat"
			  return 'meow'
			when "bird"
			  return 'tweet'
			else
			  return "Nothing."
		end
	end
	def speak(what_animal)
		print "The animal says: #{sound(what_animal)}"
	end
end

class Canine < Animal

	def sound(animals)
		return 'howl'
	end

end

class Feline < Animal

	def sound(animals)
		return 'growl'
	end

end
# ***************************************************************************************************

mypet = Animal.new
puts(mypet.speak("dog"))
puts(mypet.speak("cat"))
puts(mypet.speak("bird"))
# *****************************
puts("")
# *****************************
my_2nd_pet = Canine.new
puts(my_2nd_pet.speak("dog"))
# *****************************
puts("")
# *****************************
my_3rd_pet = Feline.new
puts(my_3rd_pet.speak("cat"))
# *****************************
puts("")
# *****************************


