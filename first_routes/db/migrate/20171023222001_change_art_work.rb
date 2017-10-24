class ChangeArtWork < ActiveRecord::Migration[5.1]

  add_index :art_works, [:title,:artist_id], unique: true
end
