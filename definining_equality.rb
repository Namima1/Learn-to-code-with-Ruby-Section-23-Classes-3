#override the == instance method to define object equality 

class IceCream
  attr_reader :flavor, :calories, :price

  def initialize(flavor:, calories:, price:)
    @flavor = flavor 
    @calories = calories
    @price = price 
  end 

  def == (other)  #this overrides the instance method 
    calories == other.calories && price == other.price 
  end   
end 

cookies_and_cream = IceCream.new(flavor: "Cookies and Cream", calories: 300, price: 3.99)
rum_raisin = IceCream.new(flavor: "Rum Raisin", calories: 300, price: 3.99)
mint = IceCream.new(flavor: "Mint", calories: 200, price: 1.99)

p cookies_and_cream == rum_raisin
#it will now give you true bc it is deemed equal 

p# cookies_and_cream == mint 
#p cookies_and_cream == cookies_and_cream
#p cookies_and_cream == IceCream.new(flavor: "Cookies and Cream", calories: 300, price: 3.99)
#ruby will give you a false bc it has no concrete way of establishing equality