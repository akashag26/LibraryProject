class BookingHistory < ApplicationRecord
  #validates
  validates :room_id, presence: true
  validates :user, presence: true
  validates :room_no, presence: true
  validates :email, presence: true

end
