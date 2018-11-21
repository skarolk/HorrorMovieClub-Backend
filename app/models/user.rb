class User < ApplicationRecord

  has_many :ratings
  has_many :movies, through: :ratings
  belongs_to :club
  has_many :friends

end
