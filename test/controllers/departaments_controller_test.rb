require 'test_helper'

class DepartamentsControllerTest < ActionController::TestCase
  setup do
    sign_in :user, @user = users(:one)
    @departament = departaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create departament" do
    assert_difference('Departament.count') do
      post :create, departament: { description: @departament.description, member_id: @departament.member_id, name: @departament.name }
    end

    assert_redirected_to departament_path(assigns(:departament))
  end

  test "should show departament" do
    get :show, id: @departament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @departament
    assert_response :success
  end

  test "should update departament" do
    patch :update, id: @departament, departament: { description: @departament.description, member_id: @departament.member_id, name: @departament.name }
    assert_redirected_to departament_path(assigns(:departament))
  end

  test "should destroy departament" do
    assert_difference('Departament.count', -1) do
      delete :destroy, id: @departament
    end

    assert_redirected_to departaments_path
  end
end
