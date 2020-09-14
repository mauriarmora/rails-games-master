class Game < ApplicationRecord
  belongs_to :user

  CATEGORIES = ['Adventure', 'Card', 'Party', 'Trivia', 'Children', 'Strategy', 'Fantasy', 'Music', 'Puzzle', 'Collaborative', 'Role', 'Betting'].freeze

  validates_presence_of :name, ,:description, :price, :category, :image, :available
  validates :price, numericality: { less_than_or_equal_to: 500 }
  validates :description, length: { minimum: 25, maximum: 400 }
  validates :category, inclusion: { in: CATEGORIES }
end
