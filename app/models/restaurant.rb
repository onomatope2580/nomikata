class Restaurant < ApplicationRecord
  belongs_to :diary
  has_one_attached :restaurant_image
end
