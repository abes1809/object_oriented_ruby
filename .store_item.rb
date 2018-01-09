# A. Use the terminal to create a new folder in your actualize folder called object_oriented_ruby.

# B. Create a new file in the folder called store_item.rb and open it in Sublime.

# C. Use hashes with symbols to represent the following scenario:
#      C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
#      C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
#      C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

# Bonus: Read more about Ruby’s hash symbol syntax:
# - http://alwayscoding.ca/momentos/2012/06/15/ruby-hash-syntax-hashrocket-vs-json-style/
# - Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer?

#Ruby syntax version
item_1 = {:color => "red", :size => "small", :price => 5.00}
item_2 = {:color => "blue", :size => "medium", :price => 10.00}
item_3 = {:color => "purple", :size => "extra small", :price => 8.00}

#javascript syntax version

item_1 = {color: "red", size: "small", price: 5.00}
item_2 = {color: "blue", size: "medium", price: 10.00}
item_3 = {color: "purple", size: "extra small", price: 8.00}

# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

class StoreItems 

  attr_reader :color, :size, :price
  attr_writer :color, :size 

  def initialize(color, size, price)
    @color = color
    @size = size
    @price = price 
  end 

  # def color 
  #   @color
  # end 

  # def size 
  #   @size 
  # end 

  # def price
  #   @price 
  # end 

  # def size=(new_size)
  #   @size = new_size
  # end 

  # def color=(new_color)
  #   @color = new_color
  # end 

end 

item_1 = StoreItems.new("red", "small", 5.00)
item_2 = StoreItems.new("blue", "medium", 10.00)

puts item_1.color
puts item_1.size
puts item_1.price 

item_1.color = "indigo" 

puts item_1.color  


