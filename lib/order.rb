class Order

  @@all = []

  def initialize(foodie, food_truck, items)
    @foodie = foodie
    @food_truck = food_truck
    @items = items
    @@all << self
  end
end
