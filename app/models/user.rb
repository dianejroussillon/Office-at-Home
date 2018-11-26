class User < ApplicationRecord
  has_many :flats, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :email, presence: true, uniqueness: true
end
