class ClubSerializer < ActiveModel::Serializer
  attributes :id, :active, :movie_id, :created_at, :updated_at
  has_many :users
  has_many :messages

  class MessageSerializer < ActiveModel::Serializer
    attributes :id, :text, :user_id, :club_id, :created_at, :updated_at
  end

  class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :image, :matched, :created_at, :updated_at
    has_many :ratings

    class RatingSerializer < ActiveModel::Serializer
      attributes :id, :movie_id, :liked, :created_at, :updated_at
    end
  end
end
