class FoodTruck
  # FoodTruck.new("Bob's Burgers", "M-F 10AM-10PM")
  attr_accessor :name, :hours, :items, :orders

  @@all = []

  def initialize(name, hours, items=nil)
    @name = name
    @hours = hours
    @items = []
    #items.nil? ? @items = [] : @items = items
    @orders = []
    self.add_items(items) if !items.nil?
    @@all << self
  end

  # def self.create(name, hours, items=nil)
  #   truck = FoodTruck.new(name, hours, items=nil)
  #   self.all << truck
  # end

  #previous foodie customers collection method
  def self.all
    @@all
  end

  def add_order(order)
    #add the order to @orders
  end

  #break this up into a create method and a find_by_name method
  def self.find(index)
    if (index.to_i - 1).between?(0, self.all.length - 1)
      self.all[index.to_i-1]
    else
      false
    end
  end
  # def self.find_or_create_by_name(name)
  #   food_truck = FoodTruck.all.find {|food_truck| food_truck.name.downcase == name.downcase}
  #   if food_truck.nil?
  #     food_truck = FoodTruck.new(name, "TBD")
  #   end
  #   food_truck
  #   #find instance of food truck or create new instance
  # end

  def add_items(items)
    if self.items.empty?
      self.items = items
    else
      #add on key/value item pairs
    end
  end

  def display_items
    self.items.each.with_index(1) do |item_hash, index|
      item_sym = item_hash.keys.first
      item_name = item_hash.keys.first.to_s.capitalize!
      item_price = item_hash[item_sym]
      puts "#{index}. #{item_name} - $#{item_price}.00"
    end
  end

  def self.display_food_trucks
    self.all.each.with_index(1) {|truck, index| puts "#{index}. #{truck.name} - #{truck.hours}"}
  end
end
