class AddIndexArtworkShare < ActiveRecord::Migration[5.1]
  add_index :artwork_shares, :artwork_id
  add_index :artwork_shares, :viewer_id
  add_index :artwork_shares, [:artwork_id,:viewer_id], unique: true
end
