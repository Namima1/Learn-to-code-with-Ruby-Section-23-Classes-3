#super keyword - invoke method with the same name in the superclass 

class Employee 
    attr_reader :name
    attr_accessor :age 
  
    def initialize(name, age)
      @name = name 
      @age = age
    end 
  
  def  introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end 
  end 
  

class Manager < Employee 
  attr_reader :rank 

    def initialize(name, age, rank)
      super(name, age) 
      @rank = rank 
    end 
    
    def yell
      "Who's the boss? I'm the boss!"
    end 

    def introduce    
      result = super     #super will run the intriduce method from employee superclass  
      result + "I'm also a manager"
    end
end 

#super will find method with the same name 



sally = Manager.new("Sally", 42, "Senior Vice President")
puts sally.introduce
puts sally.rank 
puts sally.name
puts sally.age  


