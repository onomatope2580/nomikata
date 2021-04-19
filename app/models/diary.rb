class Diary < ApplicationRecord

  validates :date, presence: true

  belongs_to :user
  has_one :restaurant
  has_one :drink
  has_one :food
end
