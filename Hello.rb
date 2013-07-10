class Hello
  #Initializing the name constructor
	def initialize(n)
		@name = n
	end
    def namez
        print "Your name is " + @name
    end
 end

  #New object creation from hello class called greeting
  #Initializing variable with value of "test set to its name"
  #The program will say hello to "test" or bob 
  greeting = Hello.new('Bob')
  puts greeting.namez()
