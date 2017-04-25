# ************************************** PROBLEM 1 **************************************

# • Download the file homework-4-problem-1.zip from Canvas and unzip it to use as the template for
#   this problem.
# • Create a class in triangle.rb called Triangle.
# • Run the code in tests.rb. This file contains a series of tests that will verify the correctness
#   of your Triangle class by calling the kind method for triangles with sides of various lengths and
#   checking the value returned. When you run the tests, you will see a report of which tests failed.
#   You haven’t written any code for Triangle yet, so all the tests will fail initially—your job is
#   to make them all pass!
# • Add a constructor to Triangle that takes three numbers as parameters representing the lengths of
#   the sides of the triangle.
# • Add a method to Triangle called kind that returns a symbol indicating whether the triangle is
#   equilateral, isosceles, or scalene. The method should raise an exception for triangles with any
#   side of length less than or equal to zero and for triangles whose sides violate the triangle
#   inequality (Links to an external site.).

class Triangle
	def initialize(side1, side2, side3)
		@side1=side1
		@side2=side2
		@side3=side3
	end
	def kind
		if @side1 == @side2 && @side2 == @side3
			puts('equilateral')
		elsif @side1 == @side2 && @side1 != @side3 || @side2 == @side3 && @side2 != @side1 || @side1 == @side3 && @side1 != @side2
			puts('isosceles')
		elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
			puts('scalene')
		end
		if @side1<=0 || @side2<=0 || @side3<=0 || @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
			raise "An error has occured in the triangle's sides"
		end
	end
end

Triangle.new(3,3,3).kind
Triangle.new(3,3,2).kind
Triangle.new(3,2,1).kind

puts("")

Triangle.new(0,2,1).kind
Triangle.new(-1,2,1).kind
Triangle.new(1,3,7).kind



