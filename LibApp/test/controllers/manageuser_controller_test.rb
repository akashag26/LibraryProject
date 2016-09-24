require 'test_helper'

class ManageuserControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get manageuser_show_url
    assert_response :success
  end

end
