require 'test_helper'

class Admin::RankingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_rankings_index_url
    assert_response :success
  end

end
