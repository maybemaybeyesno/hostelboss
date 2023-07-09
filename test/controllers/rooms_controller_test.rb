require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get inedex" do
    get rooms_inedex_url
    assert_response :success
  end
end
