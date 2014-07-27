json.array!(@category_events) do |category_event|
  json.extract! category_event, :id, :name
  json.url category_event_url(category_event, format: :json)
end
