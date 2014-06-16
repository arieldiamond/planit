json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :description, :location, :start_time, :end_time, :trip_id, :creator_id
  json.url activity_url(activity, format: :json)
end
