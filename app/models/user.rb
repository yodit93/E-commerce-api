class User < ApplicationRecord
    has_many :orders
    validates :username, presence: true, uniqueness: true
    validates :address, presence: true
    validates :password, presence: true length: { minimum: 6 }
end
