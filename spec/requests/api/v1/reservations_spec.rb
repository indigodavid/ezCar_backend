require 'swagger_helper'

RSpec.describe 'reservations', type: :request do
  after(:all) do
    Reservation.destroy_all
    Item.destroy_all
    User.destroy_all
  end

  let(:user) { create(:user) }
  let(:Authorization) { generate_jwt_token_for(user) }

  path '/reservations' do
    get('list reservations') do
      tags 'Reservations'
      produces 'application/json'
      security [bearerAuth: []]

      response(200, 'successful') do
        before { create_list(:car, 1) }
        example 'application/json', :successful, {
          code: 200,
          data: [
            {
              id: '1',
              type: 'reservation',
              attributes: {
                id: 1,
                user_id: 1,
                car_id: 1,
                reservation_date: '2022-10-28',
                due_date: '2022-11-21'
              }
            }
          ]
        }
        run_test!
      end
    end

    post('create reservation') do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          reservation_date: { type: :string, format: :date },
          due_date: { type: :string, format: :date },
          car: { type: :string }
        },
        required: %w[reservation_date due_date car]
      }
      security [bearerAuth: []]

      response(201, 'successful') do
        let!(:car) { create(:item) }
        let(:reservation) { { reservation: attributes_for(:reservation) } }
        example 'application/json', :successful, {
          code: 201,
          data: {
            id: 6,
            reservation_date: '2022-10-28',
            due_date: '2022-11-21',
            car: 'Car 1'
          }
        }
        run_test!
      end
    end
  end
end