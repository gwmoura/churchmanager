require 'test_helper'

class EverydayEventsControllerTest < ActionController::TestCase
  setup do
    sign_in :user, @user = users(:one)
    @everyday_event = everyday_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:everyday_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create everyday_event" do
    assert_difference('EverydayEvent.count') do
      post :create, everyday_event: { category_event_id: @everyday_event.category_event_id, day: @everyday_event.day, name: @everyday_event.name, repetition: @everyday_event.repetition, schedule: @everyday_event.schedule }
    end

    assert_redirected_to everyday_event_path(assigns(:everyday_event))
  end

  test "should show everyday_event" do
    get :show, id: @everyday_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @everyday_event
    assert_response :success
  end

  test "should update everyday_event" do
    patch :update, id: @everyday_event, everyday_event: { category_event_id: @everyday_event.category_event_id, day: @everyday_event.day, name: @everyday_event.name, repetition: @everyday_event.repetition, schedule: @everyday_event.schedule }
    assert_redirected_to everyday_event_path(assigns(:everyday_event))
  end

  test "should destroy everyday_event" do
    assert_difference('EverydayEvent.count', -1) do
      delete :destroy, id: @everyday_event
    end

    assert_redirected_to everyday_events_path
  end
end
