class Food < ApplicationRecord
  belongs_to :diary
  has_one_attached :food_image
end
