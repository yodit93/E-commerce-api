class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
