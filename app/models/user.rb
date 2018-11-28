class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  has_many :ratings
  has_many :movies, through: :ratings
  belongs_to :club, optional: true
  has_many :friends

end
