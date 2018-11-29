class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :price_per_day, numericality: { only_integer: true }
  mount_uploader :photo, PhotoUploader
  include PgSearch
    pg_search_scope :search_by_name_and_address,
      against: [ :name, :address ],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }
end
