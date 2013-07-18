class Dog
  def initialize(name, age)
		@name = name
		@age = age * 7 #multiply by seven for dog years
	end
	def inspect
		"<This is a Dog or Puppy named #{@name} who is #{@age} in dog years.>"
	end
	def to_s
		inspect
	end
end

rocko = Dog.new("Rocko", 2.5)
new_var = rocko.inspect
puts "#{new_var}"
