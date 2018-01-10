

class Sheep 

  @@count = 0 

  def initialize 
    @@count += 1
    @count = 1 
    fed = true 
  end 

  def self.how_many 
    return @@count 
  end 

  def bleet 
    puts "BLLEETTTT"
    puts has_money
  end

private 
  def has_money 
    true 
  end 
end 


p Sheep.new
p Sheep.new 
p Sheep.new 

p Sheep.how_many

sheep = Sheep.new 

sheep.bleet
