class Foodie

  @@all = []

  def initialize(name)
    @name = name
    @bank_account = BankAccount.new()
    # @orders = []
    # @items = []
    # @food_trucks = []
    @@all << self if !@@all.include?(self)
  end
end
