class AddIndexArtist < ActiveRecord::Migration[5.1]

  add_index :art_works, :artist_id
end
