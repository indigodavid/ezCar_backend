class Car < ApplicationRecord
  validates :name, :car_type, :brand, :color, :image, presence: true
  validates :fee_per_day, numericality: { only_float: true, greater_than: 0 }
  validates :rented, inclusion: { in: [true, false] }
end
