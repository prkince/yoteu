class AddDetailsToShips < ActiveRecord::Migration[6.0]
  def change
    add_column :ships, :detail, :string
  end
end
