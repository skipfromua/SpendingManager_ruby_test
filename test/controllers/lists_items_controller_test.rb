require 'test_helper'

class ListsItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get lists_items_new_url
    assert_response :success
  end

  test "should get edit" do
    get lists_items_edit_url
    assert_response :success
  end

end
