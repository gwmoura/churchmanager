require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  setup do
    sign_in :user, @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

end
