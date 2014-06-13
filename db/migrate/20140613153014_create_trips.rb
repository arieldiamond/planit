class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :description
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.integer :creator_id

      t.timestamps
    end
  end
end
