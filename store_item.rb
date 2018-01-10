
# - Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer?

#Ruby syntax version
item_1 = {:color => "red", :size => "small", :price => 5.00}
item_2 = {:color => "blue", :size => "medium", :price => 10.00}
item_3 = {:color => "purple", :size => "extra small", :price => 8.00}

#javascript syntax version

item_1 = {color: "red", size: "small", price: 5.00}
item_2 = {color: "blue", size: "medium", price: 10.00}
item_3 = {color: "purple", size: "extra small", price: 8.00}

# Some of your store items are food, which have a shelf life. Create a class called Food which inherits from your original class and has an additional property of shelf_life.

class StoreItems 

  attr_reader :produce_type, :size, :price
  attr_writer :produce_type, :size 

  def initialize(input_item_details)
    @produce_type = input_item_details[:produce_type]
    @size = input_item_details[:size]
    @price = input_item_details[:price] 
  end 
end 

class Food < StoreItems

  def initialize(input_item_details)
    super 
    @shelf_life = input_item_details[:shelf_life]
  end 

end 

item_1 = StoreItems.new(
                        produce_type: "apple", 
                        size: "small", 
                        price: 5.00
                        )
item_2 = Food.new(      produce_type: "avacado",
                        size: "medium",
                        price: 10.00
                        shelf_life: "Feburary"
                        )

puts item_1.produce_type
puts item_1.size
puts item_1.price 

item_1.produce_type = "banana" 

puts item_1.date_aquired


