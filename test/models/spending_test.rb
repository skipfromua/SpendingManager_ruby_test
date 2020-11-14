require 'test_helper'

class SpendingTest < ActiveSupport::TestCase
  test "shouldn`t be able without description" do
    @spending = Spending.new(money: 1)
    assert_not @spending.valid?
  end
  test "shouldn`t be able without money" do
    @spending = Spending.new(description: 'some')
    assert_not @spending.valid?
  end
end
