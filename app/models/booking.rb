class Booking < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :status, inclusion: { in: %w(pending accepted declined) }
end
