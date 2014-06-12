# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{email: "ariel@email.com", first_name: "Ariel", last_name: "Diamond", phone: "111-222-3333"},
				 {email: "fabi@email.com", first_name: "Fabi", last_name: "Castillo", phone: "555-666-7777"},
				 {email: "dusty@email.com", first_name: "Dusty", last_name: "Wilson", phone: "123-456-7890"},
				 {email: "jaimin@email.com", first_name: "Jaimin", last_name: "Patel", phone: "182-929-9080"},
				 {email: "annie@email.com", first_name: "Annie", last_name: "Baer", phone: "123-8383-1199"},
				 {email: "spiderman@email.com", first_name: "Peter", last_name: "Parker", phone: "878-010-9267"},
				 {email: "batman@email.com", first_name: "Bruce", last_name: "Wayne", phone: "888-999-0000"},
				 {email: "superman@email.com", first_name: "Clark", last_name: "Kent", phone: "732-237-7237"},
				 {email: "cplanit@planit.com", first_name: "Captain", last_name: "Planit", phone: "892-840-0087"}]

User.create!(users)

trips = [{name: "Save the world", description: "Just another day", location: "Metropolis", start_date: DateTime.new(2014,2,3), end_date: DateTime.new(2014,2,11), creator_id: 9},
				 {name: "Spring break", description: "Everyone needs a vacation", location: "Virginia Beach", start_date: DateTime.new(2010,4,7), end_date: DateTime.new(2010,4,15), creator_id: 8},
				 {name: "Ariel's Birthday", description: "Because today is a really convenient day to have a birthday", location: "DBC", start_date: DateTime.new(2014,6,19), end_date: DateTime.new(2014,6,20), creator_id: 1},
				 {name: "Lake House", description: "It's fourth of july!", location: "Vermont", start_date: DateTime.new(2012,7,1), end_date: DateTime.new(2012,7,15), creator_id: 9},
				 {name: "Clean up everything", description: "...that we broke saving the world", location: "Metropolis", start_date: DateTime.new(2014,2,13), end_date: DateTime.new(2014,2,29), creator_id: 7}]

Trip.create!(trips)

