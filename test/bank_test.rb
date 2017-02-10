gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class BankTest < Minitest::Test

  def test_banks_can_have_names
    chase = Bank.new("JP Morgan Chase")
    assert_equal "JP Morgan Chase", chase.name
  end

  def test_bank_can_open_specific_account
    person1 = Person.new("Minerva", 1000)
    chase = Bank.new("JP Morgan Chase")
    chase.open_account(person1)
    assert_equal "minverva", chase.accounts[:person1]
  end

  def test_banks_can_take_deposits
    skip
    person1 = Person.new("Minerva", 1000)
    chase = Bank.new("JP Morgan Chase")
    person1.deposit(400)
    bank_balance_for_customer = chase.balance(person1)
    customer_balance = person1.balance
    assert_equal bank_balance_for_customer, 400
    assert_equal customer_balance, 600
  end


end
