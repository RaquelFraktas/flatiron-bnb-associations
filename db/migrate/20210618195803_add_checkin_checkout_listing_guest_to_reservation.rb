class AddCheckinCheckoutListingGuestToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :checkin, :date
    add_column :reservations, :checkout, :date
    add_reference :reservations, :listing, foreign_key: true
    add_reference :reservations, :guest, foreign_key: true
  end
end
