class CreateActivityParticipations < ActiveRecord::Migration
  def change
    create_table :activity_participations do |t|
      t.integer :activity_id
      t.integer :trip_participation_id

      t.timestamps
    end
  end
end
