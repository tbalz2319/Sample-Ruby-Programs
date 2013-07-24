#print "Enter Loan amount: "
#loan = gets.chomp.to_i
loan = 425000
#print "Enter length of time in months: "
#time = gets.chomp.to_i
time = 360
time2 = 180
#print "Enter interest rate: "
#rate = gets.chomp.to_f/100
rate = 4.0/100

i = (1+rate/12)**(12/12)-1

annuity = (1-(1/(1+i))**time)/i
payment = loan / annuity

annuity2 = (1-(1/(1+i))**time2)/i
payment2 = loan / annuity2

convertz = rate * 100

puts "\n$%.2f per month" % [payment]
puts "For a Loan amout of $#{loan}"
puts "For a period of #{time} months or 30 years"
puts "For a period of #{time2} months or 15 years its will be: "
puts "\n$%.3f per month for 15 years" % [payment2]
puts "For an interest rate of #{rate} or #{convertz} percent"
