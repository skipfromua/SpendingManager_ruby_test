require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test "shouldn`t be able without title" do
    @list = List.new(category: 'some', amount: 1, user_id: 1)
    assert_not @list.valid?
  end
  test "shouldn`t be able without category" do
    @list = List.new(title: 'some', amount: 1, user_id: 1)
    assert_not @list.valid?
  end
  test "shouldn`t be able without amount" do
    @list = List.new(title: 'some', category: 'some', user_id: 1)
    assert_not @list.valid?
  end
  test "shouldn`t be able without user_id" do
    @list = List.new(title: 'some', category: 'some', amount: 1)
    assert_not @list.valid?
  end
end
