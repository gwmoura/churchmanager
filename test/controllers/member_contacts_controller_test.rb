require 'test_helper'

class MemberContactsControllerTest < ActionController::TestCase
  setup do
    sign_in :user, @user = users(:one)
    @member_contact = member_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_contact" do
    assert_difference('MemberContact.count') do
      post :create, member_contact: { contact_name: @member_contact.contact_name, contact_number: @member_contact.contact_number, degree_kinship: @member_contact.degree_kinship, member_id: @member_contact.member_id }
    end

    assert_redirected_to member_contact_path(assigns(:member_contact))
  end

  test "should show member_contact" do
    get :show, id: @member_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_contact
    assert_response :success
  end

  test "should update member_contact" do
    patch :update, id: @member_contact, member_contact: { contact_name: @member_contact.contact_name, contact_number: @member_contact.contact_number, degree_kinship: @member_contact.degree_kinship, member_id: @member_contact.member_id }
    assert_redirected_to member_contact_path(assigns(:member_contact))
  end

  test "should destroy member_contact" do
    assert_difference('MemberContact.count', -1) do
      delete :destroy, id: @member_contact
    end

    assert_redirected_to member_contacts_path
  end
end
