require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get rooms_add_url
    assert_response :success
  end

  test "should get delete" do
    get rooms_delete_url
    assert_response :success
  end

  test "should get show" do
    get rooms_show_url
    assert_response :success
  end

  test "should get update" do
    get rooms_update_url
    assert_response :success
  end

  test "should get show_history" do
    get rooms_show_history_url
    assert_response :success
  end

end
