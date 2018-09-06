require 'test_helper'

class SellersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sellers_new_url
    assert_response :success
  end

  test "should get edit" do
    get sellers_edit_url
    assert_response :success
  end

  test "should get update" do
    get sellers_update_url
    assert_response :success
  end

  test "should get insert" do
    get sellers_insert_url
    assert_response :success
  end

  test "should get destroy" do
    get sellers_destroy_url
    assert_response :success
  end

end
