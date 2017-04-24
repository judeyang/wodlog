class Wod < ApplicationRecord
  validates :wodname, :description, presence: true
end
