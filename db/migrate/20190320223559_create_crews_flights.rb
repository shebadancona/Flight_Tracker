class CreateCrewsFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :crews_flights do |t|
      t.integer :crew_id
      t.integer :flight_id
    end
  end
end
