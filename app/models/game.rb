class Game < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  CATEGORIES = ['Adventure', 'Card', 'Classic', 'Party', 'Trivia', 'Children', 'Strategy', 'Fantasy', 'Music', 'Puzzle', 'Collaborative', 'Role', 'Betting'].freeze
  CONDITION = ['Excellent', 'Good', 'Playable'].freeze

  validates_presence_of :name, :description, :price, :category, :available
  validates :price, numericality: { less_than_or_equal_to: 500, only_integer: true }
  validates :description, length: { minimum: 25, maximum: 400 }
  validates :category, inclusion: { in: CATEGORIES }
  validates :condition, inclusion: { in: CONDITION }
end
