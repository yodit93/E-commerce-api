class Product < ApplicationRecord
    has_many :orders
    validates :name, presence: true
    validates :price, presence: true, numercality: { greater_than: 0}
end
