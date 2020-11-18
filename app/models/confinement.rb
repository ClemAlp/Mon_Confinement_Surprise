class Confinement < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, presence: true
  has_one_attached :photo
end
