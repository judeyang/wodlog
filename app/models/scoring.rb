class Scoring < ApplicationRecord
  belongs_to :user
  belongs_to :wod
  attr_accessor :minutes, :seconds, :reps
  validates :content, presence: true
  
end
