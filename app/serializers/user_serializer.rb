class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :matched, :club_id, :created_at, :updated_at
  has_many :ratings
  has_many :messages

  class MessageSerializer < ActiveModel::Serializer
    attributes :id, :text, :user_id, :club_id, :created_at, :updated_at
  end

  class RatingSerializer < ActiveModel::Serializer
    attributes :id, :movie_id, :liked, :created_at, :updated_at
  end
end
