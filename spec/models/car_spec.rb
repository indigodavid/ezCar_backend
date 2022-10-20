require 'rails_helper'

RSpec.describe Car, type: :model do
  subject(:car) {
    Car.create(name: 'Golf', car_type: 'Arel', brand: 'Volkswagen', fee_per_day: 2800, color: 'blue', image: 'Ii is me', rented: true)
  }

  it 'is valid with valid attributes' do
    expect(car).to be_valid
  end

  it 'is not valid without a name' do
    car.name = nil
    expect(car).to_not be_valid
  end

  it 'is not valid without a car_type' do
    car.car_type = nil
    expect(car).to_not be_valid
  end

  it 'is not valid without a brand' do
    car.brand = nil
    expect(car).to_not be_valid
  end

  it 'is not valid without a fee_per_day' do
    car.fee_per_day = nil
    expect(car).to_not be_valid
  end
end
