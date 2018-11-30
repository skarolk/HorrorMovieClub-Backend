class Club < ApplicationRecord

  has_many :users
  has_many :messages
  belongs_to :movie

end
