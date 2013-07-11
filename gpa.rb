class Gpa
  #Consturctor for averaging 5 numbers
	def initialize(a,b,c,d,e)
		@num1 = a
		@num2 = b
		@num3 = c
		@num4 = d
		@num5 = e
	end
	#Accessor methods
	def getNum1
		@num1
	end
	def getNum2
	    @num2	
	end
	def getNum3
		@num3
	end
	def getNum4
		@num4
	end
	def getNum5
		@num5
	end
	#instance method
	def average
		(@num1 + @num2 + @num3 + @num4 + @num5) / 5
		
	end
end

calculation = Gpa.new(2.9, 2.3, 3.9, 3.3, 3.9)
gpa1 = calculation.average
puts "The Average GPA for student one is #{gpa1}"
if gpa1 > 2.9
	puts "You you are a beast, go drink STUD WEISS ERRRR"
elsif gpa1 < 2.9
	puts "Sorry you failed"
else
	puts "I guess you are not the failure I thought you were"
end

#Example of looping through 10-15 with a space and * * that sepeartes 
#each number
	(10..15).each do |n| 
   print n, '* *' 
end
