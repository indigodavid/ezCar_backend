# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: 'David', email: 'david@gmail.com', password: '123456', password_confirmation: '123456', photo: 'url', date_of_birth: '1987-03-20')
Car.create(name: 'Mercedes G550', car_type: 'SUV', brand: 'Mercedes', fee_per_day: 40.20, color: '#000000', image: 'some url', rented: false)
Reservation.create(user_id: 1, car_id: 1, reservation_date: '2022_11_01', due_date: '2022_11_04')