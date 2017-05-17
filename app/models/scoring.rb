class Scoring < ApplicationRecord
  belongs_to :user
  belongs_to :wod

  validates :content, presence: true
  
end
