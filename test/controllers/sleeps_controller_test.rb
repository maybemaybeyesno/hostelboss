require "test_helper"

class SleepsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sleeps_index_url
    assert_response :success
  end
end
