class CreateTripParticipations < ActiveRecord::Migration
  def change
    create_table :trip_participations do |t|

      t.timestamps
    end
  end
end
