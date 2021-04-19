class Diary < ApplicationRecord
  belongs_to :user
  has_one :restaurant
  has_one :drink
  has_one :food
end
