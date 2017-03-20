# ************************************** PROBLEM 3 **************************************

# Write a method called join_strings that takes two string values, joins them together with a space in between, and returns the result. For example, join_strings('Hello', 'Dolly!') should return "Hello Dolly!".


def join_strings(first_string, second_string)

  joint_string = first_string + ' ' + second_string

  return(joint_string)

end

combined = join_strings('Hello', 'Dolly!')

puts(combined)

