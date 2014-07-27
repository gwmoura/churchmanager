json.array!(@worships) do |worship|
  json.extract! worship, :id, :name, :weekday, :schedule
  json.url worship_url(worship, format: :json)
end
