require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get usuarios" do
    get :usuarios
    assert_response :success
  end

end
