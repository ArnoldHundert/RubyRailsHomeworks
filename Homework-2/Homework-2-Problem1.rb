# ************************************** PROBLEM 1 **************************************

# Add a comment at the beginning of the following code describing in plain English what it does in general, then add a comment before each line explaining what that particular line does specifically.

# **************************** PROBLEM 1 General Description **************************************

# Basically, this code will do nothing. The reason is that even though the method "fizzbuzz" is called by the method "fizzbuzz_to", the method "fizzbuzz_to" isn't called anywhere so nothing will happen.....HOWEVER
# If a line of code was added, say on line 38, that says something like 'fizzbuzz_to(#)', then the following is what can be expected "in general"....

# "fizzbuzz_to" will begin its loop at '1' passing that to "fizzbuzz" and and will receive back the value returned to it by "fizzbuzz" and will then 'puts' that value to the screen after which it will continue through the iterations 'puts'ing each value to the screen until it reaches the value of 'limit' (or as I suggest in line 8, above (#)) at which time the code will end.
# "fizzbuzz" will receive each iteration of "fizzbuzz_to" and will return a value based on the comparatives listed in the 'case' statement.

# **************************************************************************************************
# **************************************************************************************************
# Each commented explanation line below is based on the assumption that there is a line of code at the end that calls the fizzbuzz_to method as I've suggested on line 8, above.
# **************************************************************************************************
# **************************************************************************************************


# **************************** PROBLEM 1, Line by line Description *********************************

# 'def' defines/creates a method...this method's name is "fizzbuzz" which takes in / receives 1 argument assigning the argument's value to 'number'.
def fizzbuzz(number)
  # A ruby 'case' statement receives a value and compares it to a list of anticipated values. When ('when') the anticipated value is a match it will return a corresponding value (of 1 type or another). Lastly, an 'else' can be added, if it is practicle, so that a value can still be returned even if one of the anticipated one's is not a match.
  case
    # ('%' = Modulus operator (ie. - A % B returns the remainder of A/B))
    # line 28 will execute, & return 'Fizzbuzz', only when "number"/15 has a '0' remainder.
    when number % 15 == 0 then 'Fizzbuzz'
    # line 30 will execute, & return 'Fizz', only when "number"/3 has a '0' remainder.
    when number % 3  == 0 then 'Fizz'
    # line 32 will execute, & return 'Buzz', only when "number"/5 has a '0' remainder.
    when number % 5  == 0 then 'Buzz'
    # line 34 will execute, & return "number", only if and when lines 28, 30, & 32 do not execute.
    else number
  end
end

# This 'def' defines/creates a method named "fizzbuzz_to" which takes in / receives 1 argument assigning the argument's value to 'limit'.
def fizzbuzz_to(limit)
  # line 41 creates a loop beginning at '1' and incrementing by 1 upto "limit" passing the incremented value to line 43 through 'i'.
  1.upto(limit) do |i|
    # line 43 displays to the screen the value returned by 'fizzbuzz'.
    puts(fizzbuzz(i))
  end
end

# line 48 is the line of code that I added to this problem in order that it would run (in order to view the results).
fizzbuzz_to(100)





