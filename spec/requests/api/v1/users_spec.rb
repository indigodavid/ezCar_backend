require 'swagger_helper'

RSpec.describe 'users', type: :request do
  after(:all) do
    Reservation.destroy_all
    Item.destroy_all
    User.destroy_all
  end

  path '/users/signup' do
    post('new registration') do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              name: { type: :string },
              photo: { type: :string },
              date_of_birth: { type: :string, format: :date },
              email: { type: :string, pattern: '^\S+@\S+\.\S+$', format: :email },
              password: { type: :string, format: :password }
            },
            required: %w[name email password date_of_birth photo]
          }
        },
        required: %w[user]
      }

      response(200, 'successful') do
        let(:user) { { user: attributes_for(:user) } }
        example 'application/json', :successfull_request, {
          code: 201,
          data: {
            message: 'Signed up succesfully!',
            user: {
              id: 1,
              name: 'string',
              email: 'user@mail.com'
            }
          }
        }
        run_test!
      end
    end
  end

  path '/users/login' do
    post('create session') do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              email: { type: :string, pattern: '^\S+@\S+\.\S+$', format: :email },
              password: { type: :string, format: :password }
            },
            required: %w[email password]
          }
        }
      }

      response(200, 'successful') do
        let(:usr) { create(:user) }
        let(:user) { { user: { email: usr.email, password: usr.password } } }

        example 'application/json', :successfull_login, {
          code: 200,
          data: {
            user: {
              id: 1,
              name: 'User 1',
              email: 'user@mail.com'
            },
            message: 'Logged in successfully.'
          }
        }
        run_test!
      end
    end
  end

  path '/users/logout' do
    delete('delete session') do
      tags 'Users'
      security [bearerAuth: []]
      response(200, 'successful') do
        let(:user) { create(:user) }
        let(:Authorization) { generate_jwt_token_for(user) }
        example 'application/json', :succesful_logout, {
          code: 200,
          data: {
            message: 'logged out successfully'
          }
        }
        run_test!
      end
    end
  end
end
