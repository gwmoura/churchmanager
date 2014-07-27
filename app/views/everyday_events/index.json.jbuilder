json.array!(@everyday_events) do |everyday_event|
  json.extract! everyday_event, :id, :name, :schedule, :day, :repetition, :category_event_id
  json.url everyday_event_url(everyday_event, format: :json)
end
