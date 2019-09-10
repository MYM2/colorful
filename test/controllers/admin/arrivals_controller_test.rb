require 'test_helper'

class Admin::ArrivalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_arrivals_index_url
    assert_response :success
  end

end
