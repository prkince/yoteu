class AddMorePhotoUrlToShip < ActiveRecord::Migration[6.0]
  def change
  	add_column :ships, :photo_url_two, :string
  	add_column :ships, :photo_url_three, :string
  end
end
