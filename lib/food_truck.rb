class FoodTruck
  # FoodTruck.new("Bob's Burgers", "M-F 10AM-10PM")
  @@all = []

  def initialize(name, hours, items=nil)
    @name = name
    @hours = hours
    @items = [] #"Cheeseburger $12"
    self.add_items(items) if !items.nil?
    FoodTruck.add_to_all(self)
  end

  def self.add_to_all(truck) #truck is instance of class
    if !@@all.include?(truck)
      @@all << truck
    end
  end

  def add_items(items)
    # add items to menu if items are not already on the menu
  end
end
