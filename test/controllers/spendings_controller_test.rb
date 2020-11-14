require 'test_helper'

class SpendingsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get edit_list_spending_url(:list_id => 1, :id => 1)
    assert_response :success
  end

  test "should get new" do
    get new_list_spending_url(:list_id => 1, :id => 1)
    assert_response :success
  end

end
