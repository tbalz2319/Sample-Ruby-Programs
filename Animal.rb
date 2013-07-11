class Animal
  #Initializing values for all animals
	def initialize(n,l,f)
		@name = n
		@legs = l
		@feet =f
	end
	def to_s
		#String representation of variables
		"name: #{@name}. legs:#{@legs}, feet:#{@feet}"
	end
	#accessor methods
	def getName
		@name
	end
	def getLegs
		@legs
	end
	def getFeet
		@feet
	end
	def breath
		puts "I'm and animal and I breath oxygen"
	end
	def climbTree
		puts "I'm fully capable of climbing a tree"	
	end
	def showVariables
		print "My name is #{@name} "
		print "I have #{@feet} feet "
		print "I have #{@legs} legs "
   	end	
end

class Lion < Animal
    #overriding climbTree method from Animal class since lions can not climb trees well 
	def climbTree
		puts "I'm unable to climb a tree well" 
	end
end

bob = Animal.new('Bob Smith', 2, 2)
puts bob.showVariables
puts bob.climbTree
alexander = Lion.new('Alexander the Rey Leon', 0, 4)
puts alexander.showVariables
puts alexander.climbTree
puts alexander.breath

# to_s method will be called in reference of string automatically.
puts "#{alexander}"
puts "#{bob}"


