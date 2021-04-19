class Drink < ApplicationRecord
  belongs_to :diary
  has_one_attached :drink_image
end
