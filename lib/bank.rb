class Bank
  attr_reader :name
  attr_accessor :accounts

  def initialize(name = "wizard bank")
    @name = name
    @accounts = Hash.new { |hash, key| hash[key] }
  end

  def open_account(account_holder)
    accounts[account_holder, account_holder.balance]
  end

end
