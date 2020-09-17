class User < ApplicationRecord
  has_many :games, dependent: :destroy
  has_many :bookings
  has_many :requested_bookings, through: :games, source: :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
