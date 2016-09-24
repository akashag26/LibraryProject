class Room < ApplicationRecord
  validates :room_no, presence: true, uniqueness: true, numericality: { only_integer: true }
end
