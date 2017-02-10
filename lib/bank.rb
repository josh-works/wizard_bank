class Bank
  attr_reader :name
  attr_accessor :accounts

  def initialize(name = "wizard bank")
    @name = name
    @accounts = Hash.new{|key, value| key[value] = {} }
  end

  def open_account(account_holder, balance = 0)
    accounts[account_holder] = balance
  end

end
