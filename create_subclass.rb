#Define a subclass with the < symbol followed by the superclass 
#Think of the subclass as a specialized type of the superclass 

class Employee 
  attr_reader :name
  attr_accessor :age 

  def initialize(name, age)
    @name = name 
    @age = age
  end 

def  introduce
  "Hi, my name is #{name} and I am #{age} years old"
end 
end 

Naima = Employee.new("Naima", 26)
puts Naima.class 
puts Naima.introduce

class Manager < Employee 
end 

#Manger is a specialized type of employee, so we're making it inherit from employee

class Worker < Employee 
end 

bob = Manager.new("Bob", 48)
dan = Worker.new("Daniel", 30)

puts bob.class 
puts dan.class

puts bob.introduce
puts dan.introduce 

#this is coming from the superclass 