class Flat < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :price_per_day, numericality: { only_integer: true }
end
