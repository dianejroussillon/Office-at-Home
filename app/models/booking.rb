class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  has_many :reviews
  validates_format_of :start_date, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy", presence: true
  validates_format_of :end_date, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy", presence: true
end
