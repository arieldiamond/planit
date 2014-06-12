class CreateActivityParticipations < ActiveRecord::Migration
  def change
    create_table :activity_participations do |t|
    	t.integer :activity_id
    	t.integer :participant_id

      t.timestamps
    end
  end
end
