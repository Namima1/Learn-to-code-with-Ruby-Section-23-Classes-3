#superclass class method - return the superclass that class inherits from
#ancestors class method - returns to array of all superclasses (plus extra)

p 5.class 
#4 is from the integer class, so i can invoke any superclass 
p 5.class.superclass
p 5.class.superclass.superclass 
p 5.class.superclass.superclass.superclass 
p 5.class.superclass.superclass.superclass.superclass
#finally returns nil, we reached the end of the hierarchy 

puts 

p 5.class.ancestors 
#this pulls all levels in an array