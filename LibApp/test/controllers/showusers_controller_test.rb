require 'test_helper'

class ShowusersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get showusers_index_url
    assert_response :success
  end

  test "should get show" do
    get showusers_show_url
    assert_response :success
  end

end
