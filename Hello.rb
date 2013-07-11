class Hello
	#Initializing the name constructor
	def initialize(n)
		@name = n
	end
    def namez
        print "Your name is " + @name
    end
    #getter or accessor method for @name variables
    def getName
      @name
    end
    def setName=(value)
      @name = value
    end
    def to_s
      #Any class you define should have a to_s instance method to return
      #a string representation of the object.
      "(name:#{@name})" #String representation of the object Hello
    end
 end

  #New object creation from hello class called greeting
  #Initializing variable with value of "test set to its name"
  #The program will say hello to "test" or bob 
  greeting = Hello.new('Bob')
  puts greeting.namez()
  #Creating a second object which goes by the name of talal to say
  #Hello to Ralph
  talal = Hello.new('Ralph')
  puts talal.namez()
  
  #Displays output of talal object showing name ralph  
  puts talal.getName()
  #Displays output of greeting object showing name bob
  puts greeting.getName

# use of setter method to change ralph to Polo name
  talal.setName = 'Polo'
  #will show polo
  puts talal.getName()
  #This will make a string representation of 
  puts "String representation of talal is : #{talal}"

#Created new object drevon and will show a string representation of it
drevon = Hello.new('Drevon Butler')
puts "String representation of Drevon is : #{drevon}"

newvar = talal.getName
print "The value of for talal object is #{newvar}"
