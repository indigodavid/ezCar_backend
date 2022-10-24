class Reservation < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates :due_date, presence: true
  validates :reservation_date, presence: true
  validates :reserve_days, numericality: { only_integer: true, greater_than: 0 }
  validates :total_amount, numericality: { only_float: true, greater_or_equal_than: 0 }

  after_save :difference_in_days
  after_save :total_fee

  def difference_in_days
    self.reserve_days = (due_date - reservation_date).to_i
  end

  def total_fee
    self.total_amount = difference_in_days * car.fee_per_day
  end
end
