class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders, foreign_key: :customer_id, dependent: :destroy
  validates :username, presence: true, uniqueness: true
  validates :address, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
