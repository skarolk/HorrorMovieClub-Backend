class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email, :matched, :club_id, :created_at, :updated_at
  has_many :ratings

  class RatingSerializer < ActiveModel::Serializer
    attributes :id, :movie_id, :liked, :created_at, :updated_at
  end
end
