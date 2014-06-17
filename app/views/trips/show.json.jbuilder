json.array!(@activities) do |a|
  json.extract! a, :id, :description
  json.title a.name
  json.start a.start_time
  json.end a.end_time
  json.url activity_url(a, format: :html)
end
