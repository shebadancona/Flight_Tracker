class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :name
      t.datetime :date
      t.string :destination
      t.integer :airline_id

      t.timestamps
    end
  end
end
