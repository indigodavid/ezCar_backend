require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.create(name: 'John', email: 'john@mail.com', photo: 'Nice pic', date_of_birth: '2000/10/20') }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'is not valid without a photo' do
    user.photo = nil
    expect(user).to be_valid
  end

  it 'is not valid without a date_of_birth' do
    user.date_of_birth = nil
    expect(user).to_not be_valid
  end
end
