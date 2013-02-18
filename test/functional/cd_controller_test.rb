require 'test_helper'

class CdControllerTest < ActionController::TestCase
  test "should get controllers" do
    get :controllers
    assert_response :success
  end

end
