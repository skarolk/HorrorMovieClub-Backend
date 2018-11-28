class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :poster, :synopsis, :release, :created_at, :updated_at
  has_many :ratings
  has_many :clubs

  class RatingSerializer < ActiveModel::Serializer
    attributes :id, :liked, :user_id, :created_at, :updated_at
  end

  class ClubSerializer < ActiveModel::Serializer
    attributes :id, :active, :created_at, :updated_at
    has_many :users

    class UserSerializer < ActiveModel::Serializer
      attributes :id, :username, :image, :email, :matched, :created_at, :updated_at
      has_many :ratings

      class RatingSerializer < ActiveModel::Serializer
        attributes :id, :movie_id, :liked, :created_at, :updated_at
      end
    end
  end
end
