class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :clothe
  has_one :review, dependent: :destroy
end
