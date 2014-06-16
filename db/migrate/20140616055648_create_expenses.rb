class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.datetime :date
      t.decimal :total_cost
      t.text :notes
      t.integer :trip_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
