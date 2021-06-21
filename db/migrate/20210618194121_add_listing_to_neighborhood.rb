class AddListingToNeighborhood < ActiveRecord::Migration[5.0]
  def change
    add_reference :neighborhoods, :listing, foreign_key: true
  end
end
