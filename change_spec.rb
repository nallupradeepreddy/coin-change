require_relative "change"
require "test/unit"

class TestChange < Test::Unit::TestCase
  def setup
    @available_coins = {25 => 'quarter', 10 => 'dime', 5 => 'nickel', 1 => 'penny'}
  end

  def compose_error(amount)
    "#{amount} is not a valid amount, will accept only positive integers greater than 0"
  end

  def test_change_for    
    assert_equal({"nickel"=>1, "penny"=>1}, Change.change_for(6, @available_coins))
    assert_equal({"dime"=>1, "nickel"=>1, "penny"=>2}, Change.change_for(17, @available_coins))
    assert_equal({"quarter"=>1, "penny"=>1}, Change.change_for(26, @available_coins))
  end

  def test_failure
    assert_equal(compose_error(-30), Change.change_for(-30, @available_coins))
    assert_equal(compose_error('test'), Change.change_for('test', @available_coins))
    assert_equal(compose_error('-test'), Change.change_for('-test', @available_coins))
  end
end
