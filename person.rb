class Person
  def initialize(lname, fname)
		@lname = lname
		@fname = fname
	end
    
    #Accessor methods shortcut for lname and fname
    #This is a shortcut provided for these class variables to be 
    #Able to be accessed from outside of the class (read/write)
	attr_reader :lname, :fname
	attr_writer :lname, :fname
end


steve = Person.new("Litt", "Stove")
print "My name is ", steve.fname, " ", steve.lname, ".\n"

tbalz = Person.new("Balouch", "Talal")
print "My name is ", tbalz.fname, " ", tbalz.lname, ".\n"

#Use of accessor_writer below to change Talals fname to Rod
tbalz.fname = "Rod"
print "My name is ", tbalz.fname, " ", tbalz.lname, ".\n"
