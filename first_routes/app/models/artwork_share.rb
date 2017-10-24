class ArtworkShare < ApplicationRecord

  belongs_to :viewer,
    class_name: :User,
    primary_key: :id,
    foreign_key: :viewer_id

  belongs_to :artwork,
    class_name: :ArtWork,
    primary_key: :id,
    foreign_key: :artwork_id

end
