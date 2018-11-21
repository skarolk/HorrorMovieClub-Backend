class Club < ApplicationRecord

  has_many :users
  belongs_to :movie
  
end
