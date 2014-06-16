json.array!(@activities) do |activity|
  json.extract! activity, :id, :description
  json.title activity.name
  json.start activity.start_time
  json.end activity.end_time
  json.url activity_url(activity, format: :html)
end
