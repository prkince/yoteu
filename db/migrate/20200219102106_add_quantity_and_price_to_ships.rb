class AddQuantityAndPriceToShips < ActiveRecord::Migration[6.0]
  def change
  	add_column :ships, :quantity, :string
  	add_column :ships, :price, :integer
  end
end
