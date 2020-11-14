require 'test_helper'

class ListsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get lists_url
    assert_response :success
  end

  test "should get new" do
    get new_list_url
    assert_response :success
  end

  test "should get create" do
    get lists_url
    assert_response :success
  end

  test "should get update" do
    get list_url(:id => 1)
    assert_response :success
  end

  test "should get destroy" do
    get list_url(:id => 1)
    assert_response :success
  end

end
