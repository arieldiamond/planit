class CreateTripParticipations < ActiveRecord::Migration
  def change
    create_table :trip_participations do |t|
    	t.integer :traveler_id
    	t.integer :trip_id
    	t.string :transportation_type
    	t.datetime :arrival_time
    	t.datetime :departure_time

      t.timestamps
    end
  end
end
