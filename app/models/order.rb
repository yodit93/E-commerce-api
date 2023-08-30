class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
