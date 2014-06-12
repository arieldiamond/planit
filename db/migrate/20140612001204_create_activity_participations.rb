class CreateActivityParticipations < ActiveRecord::Migration
  def change
    create_table :activity_participations do |t|

      t.timestamps
    end
  end
end
