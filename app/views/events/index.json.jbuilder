json.array!(@events) do |event|
  json.extract! event, :id, :lat, :lon, :title, :description
  json.url event_url(event, format: :json)
end
