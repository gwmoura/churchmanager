json.array!(@chruches) do |chruch|
  json.extract! chruch, :id, :name, :phone, :address, :neighborhood, :city, :state, :country, :zip_code, :member_id
  json.url chruch_url(chruch, format: :json)
end
