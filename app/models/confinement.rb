class Confinement < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, :description, presence: true
  validates :photo, presence: true

  def blank_stars_1
    5 - first_criteria
  end

  def blank_stars_2
    5 - second_criteria
  end

  def blank_stars_3
    5 - third_criteria
  end
end
