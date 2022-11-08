class Paper < ApplicationRecord
  validates :title, :venue, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
end
