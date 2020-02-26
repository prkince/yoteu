class RemovePriceFromShips < ActiveRecord::Migration[6.0]
  def change
  	remove_column :ships, :price
  end
end
