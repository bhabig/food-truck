class Order

  attr_reader :items, :food_truck, :foodie

  @@all = []
  
  def initialize(foodie, food_truck, items)
    @foodie = foodie
    @food_truck = food_truck
    @items = items
    @@all << self
    @foodie.add_order(self)
    @food_truck.add_order(self)
  end

  def self.all
    @@all
  end
end
