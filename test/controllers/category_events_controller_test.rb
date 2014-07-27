require 'test_helper'

class CategoryEventsControllerTest < ActionController::TestCase
  setup do
    @category_event = category_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_event" do
    assert_difference('CategoryEvent.count') do
      post :create, category_event: { name: @category_event.name }
    end

    assert_redirected_to category_event_path(assigns(:category_event))
  end

  test "should show category_event" do
    get :show, id: @category_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_event
    assert_response :success
  end

  test "should update category_event" do
    patch :update, id: @category_event, category_event: { name: @category_event.name }
    assert_redirected_to category_event_path(assigns(:category_event))
  end

  test "should destroy category_event" do
    assert_difference('CategoryEvent.count', -1) do
      delete :destroy, id: @category_event
    end

    assert_redirected_to category_events_path
  end
end
