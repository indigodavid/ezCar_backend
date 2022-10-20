class User < ApplicationRecord
  
  validates :name, :photo, presence: true
  validates :date_of_birth, presence: true, date: true
  
end
