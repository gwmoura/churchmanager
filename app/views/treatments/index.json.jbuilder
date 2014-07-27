json.array!(@treatments) do |treatment|
  json.extract! treatment, :id, :member_id, :description, :pastor
  json.url treatment_url(treatment, format: :json)
end
