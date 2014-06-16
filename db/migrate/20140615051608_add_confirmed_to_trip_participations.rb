class AddConfirmedToTripParticipations < ActiveRecord::Migration
  def change
    add_column :trip_participations, :confirmed, :boolean, :default => true
  end
end
