class Person <

  # a Person has a first name, last name, and city
  Struct.new(:first_name, :last_name, :city)

end

# define an array to hold the Person records
people = Array.new

# open the csv file
f = File.open("people2.txt", "r")

# loop through each record in the csv file, adding
# each record to our array.
f.each_line { |line|

  # each line has fields separated by spaces, so split those fields
  fields = line.split(" ")
  
  # create a new Person
  p = Person.new

  #fields 0 is the first field
  p.first_name = fields[0].to_s
  p.last_name = fields[1]
  p.city = fields[2]
  #puts p.last_name
  #puts p.last_name
  puts "dfp -h" + " " + p.city.capitalize + " " + p.first_name + ".csv"
}
