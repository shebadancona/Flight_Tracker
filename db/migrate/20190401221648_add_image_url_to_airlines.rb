class AddImageUrlToAirlines < ActiveRecord::Migration[5.2]
  def change
    add_column :airlines, :image_url, :string
  end
end
