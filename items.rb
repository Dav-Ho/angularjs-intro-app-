module Food
  def   
  end
end

class Items
  attr_reader :color, :price, :size # shortcut for getter methods. variables have : first

  def initialize(input)
    # instead of listing the instance objects, we start with the user's input
    @color = input[:color] # instance variables = to user's input of the object
    @price = input[:price]
    @size = input[:size]
  end
end

class Food < Items # This is subclass of Items, pasting along it's getter methods
  attr_reader :shelf_life

  def initialize(input)
    super(input) # super
    @shelf_life = input[:shelf_life]
  end
end

dog = Items.new(color: "brown", price: 20, size: "big") # Making a new class/
# Make sure to put the names of the objects when making a new class.
cat = Items.new(color: "red", price: 40, size: "medium")
banana = Food.new(color: "yellow", price: 60, size: "small", shelf_life: "6 days")
# Made a new class from Food.

puts dog.color
puts banana.shelf_life
puts "The color of banana is #{banana.color}"
