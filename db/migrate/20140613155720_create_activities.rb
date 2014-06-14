class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :location
      t.float :latitude
      t.float :longitude
      t.datetime :start_time
      t.datetime :end_time
      t.integer :trip_id
      t.integer :creator_id

      t.timestamps
    end
  end
end
