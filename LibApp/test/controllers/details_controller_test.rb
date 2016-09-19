require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get details_create_url
    assert_response :success
  end

  test "should get show" do
    get details_show_url
    assert_response :success
  end

end
