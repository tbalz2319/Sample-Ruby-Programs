class OhmsLaw
	def initialize(voltage, current, resistance)
		@voltage = voltage
		@current = current
		@resistance = resistance
	end
	def voltageNil
		@current * resistance
	end
	def currentNil
		@voltage / @resistance
	end
	def resistanceNil
		@voltage / @current
	end
	def to_s
		"String representation of OhmsLaw V: #{@voltage}, I: #{@current}, R: #{@resistance}"
	end
     
    #This will make these variables accessoable from outside
    #of the class
	attr_accessor :voltage, :current, :resistance
	#solve4Current can be used for :currentNil as  an alias for it
	alias :solve4Current :currentNil
end

#created a new object called solve that will take V,I,R as inputs
solve = OhmsLaw.new(nil, 75, 3)
#attr_accessor allows us to change voltage of 9 to 16 volts from 
#outside of the class
#solve.voltage = 27

if solve.voltage.nil?
	puts "The voltage is #{solve.voltageNil}"
	#puts 
elsif solve.current.nil?
	puts solve.solve4Current
else
	puts solve.resistanceNil
end

puts solve
