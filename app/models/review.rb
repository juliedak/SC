class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  def new
  end

  def create
  end
end
