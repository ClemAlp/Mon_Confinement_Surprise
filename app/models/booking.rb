class Booking < ApplicationRecord
  belongs_to :confinement
  belongs_to :user
end
