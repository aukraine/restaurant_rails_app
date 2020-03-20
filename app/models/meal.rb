class Meal < ApplicationRecord
  validates :name, presence: true, length: { in: 3..60 }, uniqueness: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  has_and_belongs_to_many :ingredients
end
