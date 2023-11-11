class Employee < Object  
  attr_reader :name 
  attr_accessor :age 

  def initialize(name, age)
    @name = name 
    @age = age 
  end 

  def introduce 
    "Hi, my name is #{name} and I am #{age} years old"
  end 
end 

class Manager < Employee  
end 

class  Worker < Employee  
end 

p Manager.ancestors  
p Employee.ancestors 
p Worker.ancestors 
#ancestors pulls the complete hierachry 

puts 

puts Manager < Employee 

#this is asking if manager is a subclass of employee 
puts Worker < Employee 
puts Employee < Worker 