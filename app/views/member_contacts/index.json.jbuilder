json.array!(@member_contacts) do |member_contact|
  json.extract! member_contact, :id, :member_id, :contact_name, :contact_number, :degree_kinship
  json.url member_contact_url(member_contact, format: :json)
end
