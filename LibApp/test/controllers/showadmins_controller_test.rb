require 'test_helper'

class ShowadminsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get showadmins_index_url
    assert_response :success
  end

  test "should get show" do
    get showadmins_show_url
    assert_response :success
  end

  test "should get destroy" do
    get showadmins_destroy_url
    assert_response :success
  end

end
