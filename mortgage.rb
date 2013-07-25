#Object Oriented Mortgage Calculator
class MortgageCalculator
  #Constructor to initialize all variables used for
	#Mortgage calculation
	def initialize(loan, time, rate)
		@loan = loan
		@time = time
		@rate = rate
		@cRate = rate/100
		@j = (1+@cRate/12)**(12/12)-1
		@annuity = (1-(1/(1+@j))**time)/@j
		@monthly = self.payment
		@interest_number = self.converted
		@super_con = self.converted
	end
	def payment
		@loan  / @annuity
	end
	def converted
		@cRate * 100
	end
	def showVariables
		@monthly = self.payment
		@super_con = self.converted
		puts "The monthly cost for this home is $%.2f" % [monthly]
		puts "This is based off a #{@interest_number} % rate"
		puts "The loan amount is for #{@loan}"
				if @time == 360
					puts "The loan is for 30 years"
				else
					puts "The loan is for 15 years"
				end
	end
	#accessor methods so instance variables can be accessed
	#outside of the class
	attr_accessor :loan, :time, :rate, :cRate, :j, :monthly
end

loan1 = MortgageCalculator.new(425000, 360, 4.0)
loan2 = MortgageCalculator.new(550000, 180, 4.0)
loan3 = MortgageCalculator.new(1000000, 360, 3.2)
loan3.time = 360
loan3.loan = 45000

#monthly_cost = loan1.payment
#puts "\nThe monstly cost for this loan is $%.2f" % [monthly_cost]

puts loan1.showVariables
puts loan2.showVariables
puts loan3.showVariables
puts loan3.loan
