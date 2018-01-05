class Order

  attr_reader :total, :food_truck, :foodie, :items

  @@all = []

  def initialize(foodie, food_truck, total, items)
    @foodie = foodie
    @food_truck = food_truck
    @total = total
    @items = items
    @@all << self
    @foodie.add_order(self)
    @food_truck.add_order(self)
  end

  def self.all
    @@all
  end

  def add_to_order(item)
    binding.pry
  end
end
