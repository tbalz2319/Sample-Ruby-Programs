def sum(*numbers)
  puts "I will summ the array of these numbers #{numbers.inspect}"
	numbers.inject(0) { |sum, x| sum += x }
end

puts sum(1, 2, 18)
