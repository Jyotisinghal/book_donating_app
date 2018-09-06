require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get fiction" do
    get fiction_path
    assert_response :success
  end

  test "should get nonfiction" do
    get nonfiction_path
    assert_response :success
  end

  test "should get technical" do
    get technical_path
    assert_response :success
  end

  test "should get competitive" do
    get competitive_path
    assert_response :success
  end

  test "should get academic" do
    get academic_path
    assert_response :success
  end

  test "should get philosophy" do
    get philosophy_path
    assert_response :success
  end

  test "should get self_help" do
    get self_help_path
    assert_response :success
  end

end
