json.array!(@ministerial_roles) do |ministerial_role|
  json.extract! ministerial_role, :id, :name
  json.url ministerial_role_url(ministerial_role, format: :json)
end
