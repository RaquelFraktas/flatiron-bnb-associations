class AddDescriptionRatingGuestReservationToReview < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :description, :text
    add_column :reviews, :rating, :integer
    add_reference :reviews, :guest, foreign_key: true
    add_reference :reviews, :reservation, foreign_key: true
  end
end
