class Reservation < ApplicationRecord
  belongs_to :car

  validates :due_date, presence: true
  validates :reservation_date, presence: true

  def difference_in_days
    (due_date - reservation_date).to_i
  end
end
