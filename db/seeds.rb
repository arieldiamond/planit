# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{email: "ariel@email.com", first_name: "Ariel", last_name: "Diamond", phone: "111-222-3333", password: "password", confirmed_at: "2014-06-15 15:21:27".to_datetime, confirmation_sent_at: "2014-06-15 15:21:15".to_datetime, unconfirmed_email: nil},
				 {email: "fabi@email.com", first_name: "Fabi", last_name: "Castillo", phone: "555-666-7777", password: "password", confirmed_at: "2014-06-15 15:21:27".to_datetime, confirmation_sent_at: "2014-06-15 15:21:15".to_datetime, unconfirmed_email: nil},
				 {email: "dusty@email.com", first_name: "Dusty", last_name: "Wilson", phone: "123-456-7890", password: "password", confirmed_at: "2014-06-15 15:21:27".to_datetime, confirmation_sent_at: "2014-06-15 15:21:15".to_datetime, unconfirmed_email: nil},
				 {email: "jaimin@email.com", first_name: "Jaimin", last_name: "Patel", phone: "182-929-9080", password: "password", confirmed_at: "2014-06-15 15:21:27".to_datetime, confirmation_sent_at: "2014-06-15 15:21:15".to_datetime, unconfirmed_email: nil},
				 {email: "annie@email.com", first_name: "Annie", last_name: "Baer", phone: "123-8383-1199", password: "password", confirmed_at: "2014-06-15 15:21:27".to_datetime, confirmation_sent_at: "2014-06-15 15:21:15".to_datetime, unconfirmed_email: nil},
				 {email: "spiderman@email.com", first_name: "Peter", last_name: "Parker", phone: "878-010-9267", password: "password", confirmed_at: "2014-06-15 15:21:27".to_datetime, confirmation_sent_at: "2014-06-15 15:21:15".to_datetime, unconfirmed_email: nil},
				 {email: "batman@email.com", first_name: "Bruce", last_name: "Wayne", phone: "888-999-0000", password: "password", confirmed_at: "2014-06-15 15:21:27".to_datetime, confirmation_sent_at: "2014-06-15 15:21:15".to_datetime, unconfirmed_email: nil},
				 {email: "superman@email.com", first_name: "Clark", last_name: "Kent", phone: "732-237-7237", password: "password", confirmed_at: "2014-06-15 15:21:27".to_datetime, confirmation_sent_at: "2014-06-15 15:21:15".to_datetime, unconfirmed_email: nil},
				 {email: "cplanit@planit.com", first_name: "Captain", last_name: "Planit", phone: "892-840-0087", password: "password", confirmed_at: "2014-06-15 15:21:27".to_datetime, confirmation_sent_at: "2014-06-15 15:21:15".to_datetime, unconfirmed_email: nil}]

User.create!(users)

trips = [{name: "Save the world", description: "Just another day", location: "Metropolis", start_date: DateTime.new(2014,2,3), end_date: DateTime.new(2014,2,11), creator_id: 9},
				 {name: "Spring break", description: "Everyone needs a vacation", location: "Virginia Beach", start_date: DateTime.new(2010,4,7), end_date: DateTime.new(2010,4,15), creator_id: 8},
				 {name: "Ariel's Birthday", description: "Because today is a really convenient day to have a birthday", location: "DBC", start_date: DateTime.new(2014,6,19), end_date: DateTime.new(2014,6,20), creator_id: 1},
				 {name: "Lake House", description: "It's fourth of july!", location: "Vermont", start_date: DateTime.new(2012,7,1), end_date: DateTime.new(2012,7,15), creator_id: 9},
				 {name: "Clean up everything", description: "...that we broke saving the world", location: "Metropolis", start_date: DateTime.new(2014,2,13), end_date: DateTime.new(2014,2,20), creator_id: 7},
				 {name: "Final Project", description: "Planit", location: "DBC", start_date: DateTime.new(2014,6,11), end_date: DateTime.new(2014,6,11), creator_id: 3}
				]

Trip.create!(trips)


trip_participations = [{trip_id: 1, traveler_id: 6, transportation_type: "web", arrival_time: DateTime.new(2014,2,3,14,30,0), departure_time: DateTime.new(2014,2,10,10,45,0), confirmed: true},
											 {trip_id: 1, traveler_id: 7, transportation_type: "batmobile", arrival_time: DateTime.new(2014,2,3,18,30,0), departure_time: DateTime.new(2014,2,11,10,0,0), confirmed: true},
											 {trip_id: 1, traveler_id: 8, transportation_type: "flying", arrival_time: DateTime.new(2014,2,3,2,45,0), departure_time: DateTime.new(2014,2,10,10,45,0), confirmed: true},
											 {trip_id: 1, traveler_id: 9, transportation_type: "bike", arrival_time: DateTime.new(2014,2,3,20,30,0), departure_time: DateTime.new(2014,2,11,5,0,0), confirmed: true},
											 {trip_id: 1, traveler_id: 2, transportation_type: "train", arrival_time: DateTime.new(2014,2,3,15,0,0), departure_time: DateTime.new(2014,2,10,8,40,0), confirmed: true},

											 {trip_id: 2, traveler_id: 8, transportation_type: "flying", arrival_time: DateTime.new(2010,4,7,14,30,0), departure_time: DateTime.new(2010,4,15,10,45,0), confirmed: true},
											 {trip_id: 2, traveler_id: 3, transportation_type: "plane", arrival_time: DateTime.new(2010,4,7,18,30,0), departure_time: DateTime.new(2010,4,15,10,0,0), confirmed: true},
											 {trip_id: 2, traveler_id: 4, transportation_type: "drive", arrival_time: DateTime.new(2010,4,7,2,45,0), departure_time: DateTime.new(2010,4,15,10,45,0), confirmed: true},

											 {trip_id: 3, traveler_id: 1, transportation_type: "train", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},
											 {trip_id: 3, traveler_id: 2, transportation_type: "train", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},
											 {trip_id: 3, traveler_id: 3, transportation_type: "walking", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},
											 {trip_id: 3, traveler_id: 4, transportation_type: "train", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},
											 {trip_id: 3, traveler_id: 5, transportation_type: "walking", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},

											 {trip_id: 4, traveler_id: 1, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0), confirmed: true},
											 {trip_id: 4, traveler_id: 2, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0), confirmed: true},
											 {trip_id: 4, traveler_id: 3, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0), confirmed: true},
											 {trip_id: 4, traveler_id: 4, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0), confirmed: true},
											 {trip_id: 4, traveler_id: 5, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0), confirmed: true},

											 {trip_id: 5, traveler_id: 6, transportation_type: "web", arrival_time: DateTime.new(2014,2,13,14,30,0), departure_time: DateTime.new(2014,2,20,10,45,0), confirmed: true},
											 {trip_id: 5, traveler_id: 7, transportation_type: "batmobile", arrival_time: DateTime.new(2014,2,13,18,30,0), departure_time: DateTime.new(2014,2,10,10,0,0), confirmed: true},
											 {trip_id: 5, traveler_id: 8, transportation_type: "flying", arrival_time: DateTime.new(2014,2,14,2,45,0), departure_time: DateTime.new(2014,2,19,10,45,0), confirmed: true},
											 {trip_id: 5, traveler_id: 9, transportation_type: "bike", arrival_time: DateTime.new(2014,2,14,20,30,0), departure_time: DateTime.new(2014,2,20,5,0,0), confirmed: true},
											 {trip_id: 5, traveler_id: 2, transportation_type: "train", arrival_time: DateTime.new(2014,2,13,15,0,0), departure_time: DateTime.new(2014,2,20,8,40,0), confirmed: true},

											 {trip_id: 6, traveler_id: 1, transportation_type: "train", arrival_time: DateTime.new(2014,6,11,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},
											 {trip_id: 6, traveler_id: 2, transportation_type: "train", arrival_time: DateTime.new(2014,6,11,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},
											 {trip_id: 6, traveler_id: 3, transportation_type: "walking", arrival_time: DateTime.new(2014,6,11,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},
											 {trip_id: 6, traveler_id: 4, transportation_type: "train", arrival_time: DateTime.new(2014,6,11,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},
											 {trip_id: 6, traveler_id: 5, transportation_type: "walking", arrival_time: DateTime.new(2014,6,11,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0), confirmed: true},
											]

TripParticipation.create!(trip_participations)

activities = [{name: "fishing", description: "Woohoo, on a boat!", start_time: DateTime.new(2012,7,3,6,0,0), end_time: DateTime.new(2012,7,3,15,0,0), location: "lake", trip_id: 4, creator_id: 3},
							{name: "kayaking", description: "Woohoo, on a smaller boat!", start_time: DateTime.new(2012,7,4,10,0,0), end_time: DateTime.new(2012,7,4,14,0,0), location: "river", trip_id: 4, creator_id: 3},
							{name: "winning", description: "because we're superheroes", start_time: DateTime.new(2014,2,5,10,0,0), end_time: DateTime.new(2014,2,7,15,0,0), location: "city center", trip_id: 1, creator_id: 7},
							{name: "eat cake, drink cocktails", description: "because it's Ariel's birthday", start_time: DateTime.new(2014,6,19,18,0,0), end_time: DateTime.new(2014,6,19,21,0,0), location: "Bavette's", trip_id: 3, creator_id: 1}]

Activity.create!(activities)

activity_participations = [{activity_id: 1, trip_participation_id: 14},
													 {activity_id: 1, trip_participation_id: 15},
													 {activity_id: 1, trip_participation_id: 16},
													 {activity_id: 2, trip_participation_id: 16},
													 {activity_id: 2, trip_participation_id: 17},
													 {activity_id: 2, trip_participation_id: 18},
													 {activity_id: 3, trip_participation_id: 16},
													 {activity_id: 3, trip_participation_id: 17},
													 {activity_id: 3, trip_participation_id: 18},
													 {activity_id: 3, trip_participation_id: 16},
													 {activity_id: 4, trip_participation_id: 1},
													 {activity_id: 4, trip_participation_id: 2},
													 {activity_id: 4, trip_participation_id: 3},
													 {activity_id: 4, trip_participation_id: 5}]

ActivityParticipation.create!(activity_participations)

expenses = [{name: "doughnuts", date: DateTime.new(2014,6,16), cost_in_cents: 1500, notes: "Thanks, Dusty!", trip_id: 6},
						{name: "beer", date: DateTime.new(2014,6,17), cost_in_cents: 2800, notes: "Ariel was drinking her bourbon", trip_id: 6},
						{name: "real domain name", date: DateTime.new(2014,6,18), cost_in_cents: 1200, notes: "planit.com", trip_id: 6},
						{name: "long domain name", date: DateTime.new(2014,6,18), cost_in_cents: 1200, notes: "letstakeatripwithfriendsandplanitrealnice.com", trip_id: 6}]

Expense.create!(expenses)

charges = [{expense_id: 1, payment_in_cents: 0, debt_in_cents: 300, trip_participation_id: 24},
					 {expense_id: 1, payment_in_cents: 0, debt_in_cents: 300, trip_participation_id: 25},
					 {expense_id: 1, payment_in_cents: 1500, debt_in_cents: 300, trip_participation_id: 26},
					 {expense_id: 1, payment_in_cents: 0, debt_in_cents: 300, trip_participation_id: 27},
					 {expense_id: 1, payment_in_cents: 0, debt_in_cents: 300, trip_participation_id: 28},

					 {expense_id: 2, payment_in_cents: 0, debt_in_cents: 0, trip_participation_id: 24},
					 {expense_id: 2, payment_in_cents: 0, debt_in_cents: 700, trip_participation_id: 25},
					 {expense_id: 2, payment_in_cents: 0, debt_in_cents: 700, trip_participation_id: 26},
					 {expense_id: 2, payment_in_cents: 2800, debt_in_cents: 700, trip_participation_id: 27},
					 {expense_id: 2, payment_in_cents: 0, debt_in_cents: 700, trip_participation_id: 28},

 					 {expense_id: 3, payment_in_cents: 0, debt_in_cents: 0, trip_participation_id: 24},
					 {expense_id: 3, payment_in_cents: 0, debt_in_cents: 0, trip_participation_id: 25},
					 {expense_id: 3, payment_in_cents: 0, debt_in_cents: 600, trip_participation_id: 26},
					 {expense_id: 3, payment_in_cents: 0, debt_in_cents: 0, trip_participation_id: 27},
					 {expense_id: 3, payment_in_cents: 1200, debt_in_cents: 600, trip_participation_id: 28},

					 {expense_id: 4, payment_in_cents: 1000, debt_in_cents: 400, trip_participation_id: 24},
					 {expense_id: 4, payment_in_cents: 0, debt_in_cents: 400, trip_participation_id: 25},
					 {expense_id: 4, payment_in_cents: 0, debt_in_cents: 0, trip_participation_id: 26},
					 {expense_id: 4, payment_in_cents: 200, debt_in_cents: 400, trip_participation_id: 27},
					 {expense_id: 4, payment_in_cents: 0, debt_in_cents: 0, trip_participation_id: 28}]

Charge.create!(charges)

polls = [{name: "Location", trip_id: 3, creator_id: 1},
			{name: "Friday Dinner", trip_id: 3, creator_id: 1},
			{name: "Which Beach?", trip_id: 3, creator_id: 1},
			{name: "What dates?", trip_id: 3, creator_id: 1}]

Poll.create!(polls)

options = [{name: "Paris", poll_id: 1},
			{name: "London", poll_id: 1},
			{name: "Rome", poll_id: 1},
			{name: "Munich", poll_id: 1},
			{name: "New York", poll_id: 1},
			{name: "Los Angeles", poll_id: 1},
			{name: "Steak", poll_id: 2},
			{name: "Seafood", poll_id: 2},
			{name: "Italian", poll_id: 2},
			{name: "Zuma", poll_id: 3},
			{name: "East", poll_id: 3},
			{name: "West", poll_id: 3},
			{name: "North", poll_id: 3},
			{name: "Oct 1", poll_id: 4},
			{name: "Oct 8", poll_id: 4},
			{name: "Oct 15", poll_id: 4}]

Option.create!(options)
