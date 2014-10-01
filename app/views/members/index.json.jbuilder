json.array!(@members) do |member|
  json.extract! member, :id, :name, :birth_date, :sex, :address, :neighborhood, :city, :state, :country, :zip_code, :home_phone, :mobile_phone, :work_phone, :email, :blood_type, :marital_status, :congregating, :photo, :withdrawl_date, :departament_id, :skills, :worship_date, :situation, :profession, :education, :baptism_date, :wedding_date, :ministerial_role_id, :facebook, :twitter, :instagram, :whatsapp, :church_id
  json.url member_url(member, format: :json)
end
