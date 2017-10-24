class Comment < ApplicationRecord


  belongs_to :author,
  class_name: :User,
  primary_key: :id,
  foreign_key: :user_id

  belongs_to :artwork,
  class_name: :ArtWork,
  primary_key: :id,
  foreign_key: :artist_id
end
