#!/usr/local/bin/ruby

#class definition
class Box
  #Constructor method
  def initialize(w,h)
    @width, @height = w, h
  end
  
  #Accessor methods
  def printWidth
    @width
  end
  
  def printHeight
    @height
  end
  
  def printMult
    @height * @width
  end
end

#object creation
box = Box.new(30,40)

#using accessor methods outside of the class now
x = box.printWidth()
y = box.printHeight()
z = box.printMult()

puts "Width of the box is : #{x}"
puts "Height of the box it : #{y}"
puts "The Two numbers multiplied together equal : #{z}"

print "Enter Width: "
wt = gets.chomp.to_f
print "Enter Height: "
ht = gets.chomp.to_f



box2 = Box.new(wt, ht)
wtht = box2.printMult()
puts "The Two new nu
