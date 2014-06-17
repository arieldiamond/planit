class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
		t.string :name
		t.integer :trip_id
		t.integer :creator_id

      	t.timestamps
    end
  end
end
