class Game < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?



  CATEGORIES = ['Adventure', 'Abstract', 'Betting', 'Card', 'Children', 'Classic', 'Collaborative', 'Fantasy', 'Movies/TV', 'Music', 'Party', 'Puzzle', 'Role', 'Science-Fiction', 'Strategy', 'Trivia'].freeze
  CONDITION = ['Excellent', 'Good', 'Playable'].freeze

  validates_presence_of :name, :description, :price, :category, :available
  validates :price, numericality: { less_than_or_equal_to: 500, only_integer: true }
  validates :description, length: { minimum: 25, maximum: 400 }
  validates :category, inclusion: { in: CATEGORIES }
  validates :condition, inclusion: { in: CONDITION }
end
