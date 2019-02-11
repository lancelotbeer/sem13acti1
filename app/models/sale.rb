class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :category, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5
  }
  validates :value, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
  validates :discount, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 40
  }
end