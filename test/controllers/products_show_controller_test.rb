require 'test_helper'

class ProductsShowControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get products_show_show_url
    assert_response :success
  end

end
