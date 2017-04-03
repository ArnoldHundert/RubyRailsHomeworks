# ************************************** PROBLEM 3 **************************************

# A) What is an instance variable in Ruby? Try to find the answer via Google and explain it in your
#    own words.
# B) Use the Ruby documentation to choose a method from the Integer class and describe what it does
#    in your own words.

# ***************************************************************************************************

# A) In ruby, all instance variables begin with the '@' symbol. The scope of an instance variable is limited to whatever object 'self' refers to. Instance variables are available to every method within the class object, as opposed to a local variable whose scope is limited to the method in which it is created.

# B) method = '.to_s(base=10)'		ie. - 24680.to_s => "24680"
#    This method converts an integer type value into a string with a default base of 10, as in the
#    example provided on line 12.
#    If a base value is provided (as shown in the example on line 17) this method will first convert
#    the given integer value to the given radix and then convert the result into a string.
     # (ie. - 24680.to_s(16) => "3039")

# ***************************************************************************************************

