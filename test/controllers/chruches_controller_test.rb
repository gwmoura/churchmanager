require 'test_helper'

class ChruchesControllerTest < ActionController::TestCase
  setup do
    sign_in :user, @user = users(:one)
    @chruch = chruches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chruches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chruch" do
    assert_difference('Chruch.count') do
      post :create, chruch: { address: @chruch.address, city: @chruch.city, country: @chruch.country, member_id: @chruch.member_id, name: @chruch.name, neighborhood: @chruch.neighborhood, phone: @chruch.phone, state: @chruch.state, zip_code: @chruch.zip_code }
    end

    assert_redirected_to chruch_path(assigns(:chruch))
  end

  test "should show chruch" do
    get :show, id: @chruch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chruch
    assert_response :success
  end

  test "should update chruch" do
    patch :update, id: @chruch, chruch: { address: @chruch.address, city: @chruch.city, country: @chruch.country, member_id: @chruch.member_id, name: @chruch.name, neighborhood: @chruch.neighborhood, phone: @chruch.phone, state: @chruch.state, zip_code: @chruch.zip_code }
    assert_redirected_to chruch_path(assigns(:chruch))
  end

  test "should destroy chruch" do
    assert_difference('Chruch.count', -1) do
      delete :destroy, id: @chruch
    end

    assert_redirected_to chruches_path
  end
end
