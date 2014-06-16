json.array!(@trips) do |trip|
  json.extract! trip, :id, :description
  json.title trip.name
  json.start trip.start_date
  json.end trip.end_date
  json.url trip_path(trip, format: :html
  )
end
