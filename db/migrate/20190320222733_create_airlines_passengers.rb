class CreateAirlinesPassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :airlines_passengers do |t|
      t.integer :airline_id
      t.integer :passenger_id
    end
  end
end
