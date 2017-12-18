class Foodie

  attr_accessor :name, :orders, :food_trucks, :items
  attr_reader :bank_account

  @@all = []

  def initialize(name)
    @name = name
    @bank_account = BankAccount.new(self)
    @orders = []
    @items = []
    @food_trucks = []
    @@all << self if !@@all.include?(self)
  end

  def add_order(order)
    self.orders << order
    self.add_food_truck(order.food_truck)
  end

  def add_food_truck(food_truck)
    self.food_trucks << food_truck if !self.food_trucks.include?(food_truck)
  end

  def display_food_trucks
    #display trucks in readable format
  end

  def self.all
    @@all
  end
end
