class ArtWork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true
  validates :title, uniqueness: { scope: :artist_id,
    message: "title and artist combination must be unique" }


    belongs_to :artist,
    class_name: :User,
    primary_key: :id,
    foreign_key: :artist_id

    has_many :shared_artwork_entry,
      class_name: :ArtworkShare,
      primary_key: :id,
      foreign_key: :artwork_id

    has_many :shared_viewers,
      through: :shared_artwork_entry,
      source: :viewer

    has_many :comments,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :Comment,
    dependent: :destroy
end
