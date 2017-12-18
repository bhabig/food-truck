class Order

  attr_reader :items, :food_truck, :foodie

  @@all = []

  def initialize(foodie, food_truck, items)
    @foodie = foodie
    @food_truck = food_truck
    @items = items
    @@all << self
  end

  def self.all
    @@all
  end
end
