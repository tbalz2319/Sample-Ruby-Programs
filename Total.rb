class Total
  def initialize(initial_amount)
		@total=initial_amount
	end
	def increaseBy(increase)
		@total += increase
	end
	def multiplyBy(increase)
		@total *= increase
	end
	def setTo(amount)
		@total = amount		
	end
	def getTotal()
		return @total
	end
	def hasTotal()
		return @total!=nil
	end
end

#new object created from class Total initialized to 0

total = Total.new(0)
for bb in 1..5
	total.increaseBy(bb)
	puts total.getTotal if total.hasTotal
end
print "Final Total: ", total.getTotal, "\n" if total.hasTotal

#new object being created and initilized to 1

total2 = Total.new(1)
for zz in 1..5
	total2.multiplyBy(zz)
	puts total2.getTotal if total2.hasTotal
end
print "Final Total for total2: ", total2.getTotal, "\n" if total2.hasTotal
