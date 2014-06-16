class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :payment_in_cents
      t.integer :debt_in_cents
      t.integer :trip_participation_id
      t.integer :expense_id

      t.timestamps
    end
  end
end
