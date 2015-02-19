require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get show_date" do
    get :show_date
    assert_response :success
  
  end

end
