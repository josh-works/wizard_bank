gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'


class PersonTest < Minitest::Test

  def test_person_has_name_and_money
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 5000)
    assert_equal 1000, person1.balance
    assert_equal 5000, person2.balance
  end


end
