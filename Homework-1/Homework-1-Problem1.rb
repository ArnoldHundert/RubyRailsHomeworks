# ************************************** PROBLEM 1 **************************************

# Add a comment before each line of the following code explaining what the line does in plain English. If you’re not sure what certain lines do, try copying and pasting the code into a Ruby file, modifying it, and running it to help you figure out what’s going on. For example, you can try adding puts statements in different places to see what is happening.

# 'def' defines/creates a method...this method's name is "full_name" which takes in / receives 3 arguments assigning the argument's values to 'first_name', 'last_name' & 'title' respectively.
def full_name(first_name, last_name, title)
  # The variable 'name' is being assigned the value of 'nil'.
  name = nil

  # 'if' is a conditional statement. The '&&' is a logical "And". The first stage of this conditional list (line 10) will run only if all 3 variables returns as 'true'. (NOTE: When any of the conditional tests return as 'true' (if they do) then program flow moves to the 'end' of the if/end statement).
  if title && first_name && last_name
    # if all 3 variables in line 9 register as 'true' the 'name' variable will be assigned the concatenation of 'title', a space character (' '), 'first_name', a 2nd space character (' ') and 'last_name'.
    name = title + ' ' + first_name + ' ' + last_name
  # if the logic in line 9 returns as false, line 13 checks the next set of conditionals...namely if ('elseif') 'title' and ('&&') 'last_name' return as true.
  elsif title && last_name
    # if line 13 returns as true, line 15 assigns the concatenation of 'title', a space character (' ') and 'last_name' to the 'name' variable.
    name = title + ' ' + last_name
  # if the logic in line 13 returns as false, line 17 checks the next set of conditionals...namely if ('elseif') 'first_name' and ('&&') 'last_name' return as true.
  elsif first_name && last_name
    # if line 17 returns as true, line 19 assigns the concatenation of 'first_name', a space character (' ') and 'last_name' to the 'name' variable.
    name = first_name + ' ' + last_name
  # if the logic in line 17 returns as false, line 21 checks the next set of conditionals...namely if ('elseif') 'first_name' returns as true.
  elsif first_name
    # if line 21 returns as true, line 23 assigns 'first_name' to the 'name' variable.
    name = first_name
  # if all of the previous logical tests return false then line 25's code (on line 26) is run.
  else
    # if the programs logic flow reaches here (again meaning that all previous logic tests have returned false) then line 27 "raises a RuntimeError with the string as a message" (see "http://apidock.com/ruby/Kernel/raise") and program flow stops.
    raise "That doesn't look like a name!"
  # this is the 'end' of the logical 'if' conditional statement.
  end

  # if program flow reaches line 32 whatever value the conditionals have assigned to the 'name' variable will be returned.
  return(name)
end



