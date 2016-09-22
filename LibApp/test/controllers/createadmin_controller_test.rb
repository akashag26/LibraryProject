require 'test_helper'

class CreateadminControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get createadmin_new_url
    assert_response :success
  end

  test "should get create" do
    get createadmin_create_url
    assert_response :success
  end

end
