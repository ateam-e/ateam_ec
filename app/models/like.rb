class Like < ApplicationRecord
  validates :customer_id, {presence: true}
  validates :product_id, {presence: true}
end
