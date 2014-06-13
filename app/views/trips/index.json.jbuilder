json.array!(@trips) do |trip|
  json.extract! trip, :id, :name, :description, :location, :start_date, :end_date, :creator_id
  json.url trip_url(trip, format: :json)
end
