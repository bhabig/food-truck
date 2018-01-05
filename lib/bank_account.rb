class BankAccount

  attr_accessor :balance

  attr_reader :owner

  @@all = []

  def initialize(owner)
    @owner = owner
    @balance = rand(0..100)
    @@all << self
  end

  def self.all
    @@all
  end

  #make an add to account method

end
