require './lib/bank'

class Person
  attr_reader :name
  attr_accessor :balance

  def initialize(name = "Wizard", balance = 0)
    @name = name
    @balance = balance
  end

end
