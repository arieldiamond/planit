json.extract! @trip, :id, :description
json.title @trip.name
json.start @trip.start_date
json.end @trip.end_date
json.url trip_path(trip, format: :html)

json.extract! @trip, :id, :description, :name :start_date, :end_date
