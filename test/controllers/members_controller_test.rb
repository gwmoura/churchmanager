require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    sign_in :user, @user = users(:one)
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      photo_upload = fixture_file_upload("files/missing.png", 'image/png')
      post :create, member: { address: @member.address, baptism_date: @member.baptism_date, birth_date: @member.birth_date, blood_type: @member.blood_type, church_id: @member.church_id, city: @member.city, congregating: @member.congregating, country: @member.country, departament_id: @member.departament_id, education: @member.education, email: @member.email, facebook: @member.facebook, home_phone: @member.home_phone, instagram: @member.instagram, marital_status: @member.marital_status, ministerial_role_id: @member.ministerial_role_id, mobile_phone: @member.mobile_phone, name: @member.name, neighborhood: @member.neighborhood, photo: photo_upload, profession: @member.profession, sex: @member.sex, situation: @member.situation, skills: @member.skills, state: @member.state, twitter: @member.twitter, wedding_date: @member.wedding_date, whatsapp: @member.whatsapp, withdrawl_date: @member.withdrawl_date, work_phone: @member.work_phone, worship_date: @member.worship_date, zip_code: @member.zip_code }
    end
    
    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    photo_upload = fixture_file_upload("files/missing.png", 'image/png')
    patch :update, id: @member, member: { address: @member.address, baptism_date: @member.baptism_date, birth_date: @member.birth_date, blood_type: @member.blood_type, church_id: @member.church_id, city: @member.city, congregating: @member.congregating, country: @member.country, departament_id: @member.departament_id, education: @member.education, email: @member.email, facebook: @member.facebook, home_phone: @member.home_phone, instagram: @member.instagram, marital_status: @member.marital_status, ministerial_role_id: @member.ministerial_role_id, mobile_phone: @member.mobile_phone, name: @member.name, neighborhood: @member.neighborhood, photo: photo_upload, profession: @member.profession, sex: @member.sex, situation: @member.situation, skills: @member.skills, state: @member.state, twitter: @member.twitter, wedding_date: @member.wedding_date, whatsapp: @member.whatsapp, withdrawl_date: @member.withdrawl_date, work_phone: @member.work_phone, worship_date: @member.worship_date, zip_code: @member.zip_code }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
