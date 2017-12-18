class BankAccount

  attr_accessor :balance

  attr_reader :owner

  @@all = []

  def initialize(owner)
    @owner = owner
    @balance = rand(0..100)
    @@all << self if !@@all.include?(self)
  end

  def self.all
    @@all
  end

end
