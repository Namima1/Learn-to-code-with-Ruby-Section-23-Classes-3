#advantage of subclass, each one can define exclusive functionality. 

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
  

class Manager < Employee             #this only comes up in a manager instance 
    def yell
      "Who's the boss? I'm the boss!"
    end 
end 

class Worker < Employee 
  def clock_in(time)
   "Starting my shift at #{time}"
  end
end 

sally = Manager.new("Sally", 42)
puts sally.yell
puts sally.introduce

chuck = Worker.new("Chuck", 53)
puts chuck.clock_in("8:30am")
puts chuck.introduce


#we were able to create different intros depending on their jobs 