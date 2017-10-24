class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks,
  class_name: :art_works,
  primary_key: :id,
  foreign_key: :artist_id

  has_many :shared_artwork_entry,
    class_name: :ArtworkShare,
    primary_key: :id,
    foreign_key: :viewer_id

  has_many :shared_artwork,
    through: :shared_artwork_entry,
    source: :artwork

  has_many :comments,
  class_name: :Comment,
  primary_key: :id,
  foreign_key: :user_id,
  dependent: :destroy  

end
