class AddConfirmedToTripParticipations < ActiveRecord::Migration
  def change
    add_column :trip_participations, :confirmed, :boolean
  end
end
