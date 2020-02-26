class Order < ApplicationRecord
  belongs_to :user
  belongs_to :ship
  monetize :amount_cents

end
