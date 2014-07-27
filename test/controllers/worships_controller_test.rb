require 'test_helper'

class WorshipsControllerTest < ActionController::TestCase
  setup do
    @worship = worships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worship" do
    assert_difference('Worship.count') do
      post :create, worship: { name: @worship.name, schedule: @worship.schedule, weekday: @worship.weekday }
    end

    assert_redirected_to worship_path(assigns(:worship))
  end

  test "should show worship" do
    get :show, id: @worship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worship
    assert_response :success
  end

  test "should update worship" do
    patch :update, id: @worship, worship: { name: @worship.name, schedule: @worship.schedule, weekday: @worship.weekday }
    assert_redirected_to worship_path(assigns(:worship))
  end

  test "should destroy worship" do
    assert_difference('Worship.count', -1) do
      delete :destroy, id: @worship
    end

    assert_redirected_to worships_path
  end
end
