require 'test_helper'

class SpendingsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get spendings_edit_url
    assert_response :success
  end

  test "should get new" do
    get spendings_new_url
    assert_response :success
  end

end
