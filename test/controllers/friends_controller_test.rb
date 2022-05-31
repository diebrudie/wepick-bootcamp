require "test_helper"

class FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get friends_show_url
    assert_response :success
  end

  test "should get hola" do
    get friends_hola_url
    assert_response :success
  end
end
