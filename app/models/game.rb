class Game < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  CATEGORIES = ['Adventure', 'Card', 'Classic', 'Party', 'Trivia', 'Children', 'Strategy', 'Fantasy', 'Music', 'Puzzle', 'Collaborative', 'Role', 'Betting'].freeze
  CONDITION = ['Excellent', 'Good', 'Playable'].freeze

  validates_presence_of :name, :description, :price, :category, :available
  validates :price, numericality: { less_than_or_equal_to: 500, only_integer: true }
  validates :description, length: { minimum: 25, maximum: 400 }
  validates :category, inclusion: { in: CATEGORIES }
  validates :condition, inclusion: { in: CONDITION }
  validate :image_type

  private

  def image_type
     unless photo.attached?
       errors.add(:photo, "Please add an image")
     end
  end
end
