require 'test_helper'

class MinisterialRolesControllerTest < ActionController::TestCase
  setup do
    sign_in :user, @user = users(:one)
    @ministerial_role = ministerial_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ministerial_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ministerial_role" do
    assert_difference('MinisterialRole.count') do
      post :create, ministerial_role: { name: @ministerial_role.name }
    end

    assert_redirected_to ministerial_role_path(assigns(:ministerial_role))
  end

  test "should show ministerial_role" do
    get :show, id: @ministerial_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ministerial_role
    assert_response :success
  end

  test "should update ministerial_role" do
    patch :update, id: @ministerial_role, ministerial_role: { name: @ministerial_role.name }
    assert_redirected_to ministerial_role_path(assigns(:ministerial_role))
  end

  test "should destroy ministerial_role" do
    assert_difference('MinisterialRole.count', -1) do
      delete :destroy, id: @ministerial_role
    end

    assert_redirected_to ministerial_roles_path
  end
end
