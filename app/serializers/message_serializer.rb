class MessageSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :club_id, :created_at, :updated_at
end
