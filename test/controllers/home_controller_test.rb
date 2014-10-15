require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    sign_in :user, @user = users(:one)
    get :index
    assert_response :success
  end

end
