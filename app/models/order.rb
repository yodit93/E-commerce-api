class Order < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :product
  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
