class AddClothesReferencesToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :clothe, null: false, foreign_key: true
  end
end
