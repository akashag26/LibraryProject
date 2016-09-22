class Room < ApplicationRecord
  validates :room_no, presence: true, uniqueness: true
end
