class Foodie

  attr_accessor :name
  attr_reader :bank_account

  @@all = []

  def initialize(name)
    @name = name
    @bank_account = BankAccount.new(self)
    # @orders = []
    # @items = []
    # @food_trucks = []
    @@all << self if !@@all.include?(self)
  end

  def self.all
    @@all
  end
end
