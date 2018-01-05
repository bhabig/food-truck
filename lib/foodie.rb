class Foodie

  attr_accessor :name, :orders, :food_trucks, :items
  attr_reader :bank_account

  @@all = []

  def initialize(name)
    @name = name.capitalize
    @bank_account = BankAccount.new(self)
    @orders = []
    @items = []
    @food_trucks = []
    @@all << self
  end

  def add_order(order)
    self.orders << order
    self.add_food_truck(order.food_truck)
  end

  def self.find_or_create_by_name(name) "Bob"
    foodie = Foodie.all.find {|foodie| foodie.name.downcase == name.downcase}
    if foodie.nil?
      foodie= Foodie.new(name)
    end
    foodie
    #find existing instance from @@all, or create new one
  end

  def add_food_truck(food_truck)
    self.food_trucks << food_truck #if food truck isn't in collection
  end

  def display_food_trucks
    #puts out contents of @food_trucks
  end

  def self.all
    @@all
  end
end
