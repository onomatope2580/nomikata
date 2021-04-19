class Plan < ApplicationRecord
  validates :date, presence: true

  belongs_to :user
  has_one :diary
end
