class Confinement < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, :description, presence: true
  validates :photo, presence: true
end
