class Booking < ApplicationRecord
  #validates
  validates :booking_ID, presence: true
  validates :user, presence: true
  validates :room_no, presence: true
  validates :email, presence: true
end
