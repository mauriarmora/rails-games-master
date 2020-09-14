class Game < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :price, :category, :image, :available
  validates :price, numericality: { max: }
end
