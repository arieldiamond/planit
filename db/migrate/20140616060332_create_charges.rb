class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.decimal :payment
      t.decimal :debt
      t.integer :trip_participation_id
      t.integer :expense_id

      t.timestamps
    end
  end
end
