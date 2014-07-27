json.array!(@departaments) do |departament|
  json.extract! departament, :id, :name, :description, :member_id
  json.url departament_url(departament, format: :json)
end
