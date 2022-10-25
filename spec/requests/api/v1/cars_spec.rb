require 'swagger_helper'

describe 'cars API' do

  path '/api/v1/cars' do

    post 'Creates a car' do
      tags 'cars'
      consumes 'application/json', 'application/xml'
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          car_type: { type: :string },
          brand: { type: :string },
          fee_per_day: { type: :number },
          color: { type: :string },
          image: { type: :string },
        },
        required: [ 'name', 'status' ]
      }

      response '201', 'Car created' do
        let(:car) { { name: 'Audi', status: 'available' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:car) { { name: 'BMW' } }
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}' do

    get 'Retrieves a Car' do
      tags 'cars'
      produces 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'name found' do
        schema type: :object,
          properties: {
            id: { type: :integer, },
            name: { type: :string },
            brand: { type: :string },
            car_type: { type: :string },
            fee_per_day: { type: :number },
            color: { type: :string },
            image: { type: :string },
            rented: { type: :boolean },
          },
          required: [ 'id', 'name', 'brand', 'car_type', 'fee_per_day', 'color', 'image', 'rented' ]

        let(:id) { Car.create(name: 'Audi', brand: 'Audi', car_type: 'SUV', fee_per_day: 100, color: 'black', image: 'https://www.audi.com/content/dam/gbp2/experience-audi/audi-r8/audi-r8-coupe/audi-r8-coupe-2019/1920x1080/1920x1080-r8-coupe-2019-1.jpg', rented: false).id }
        run_test!
      end

      response '404', 'Car not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end