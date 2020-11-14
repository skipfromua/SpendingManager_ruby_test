require 'test_helper'

class SharedListTest < ActiveSupport::TestCase
  test "shouldn`t be able without user_id" do
    @list = SharedList.new(list_id: 1)
    assert_not @list.valid?
  end
  test "shouldn`t be able without list_id" do
    @list = SharedList.new(user_id: 1)
    assert_not @list.valid?
  end
end
