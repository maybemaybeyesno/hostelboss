require "test_helper"

class Payment::PaymentAllocationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get payment_payment_allocation_index_url
    assert_response :success
  end
end
