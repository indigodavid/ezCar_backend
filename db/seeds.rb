# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: 'David', email: 'david@gmail.com', password: '123456', password_confirmation: '123456', photo: 'url_david',
            date_of_birth: '1987-03-20')
User.create(name: 'Julio', email: 'julio@gmail.com', password: '123456', password_confirmation: '123456', photo: 'url_julio',
            date_of_birth: '1987-03-20')
User.create(name: 'Darik', email: 'darik@gmail.com', password: '123456', password_confirmation: '123456',
            photo: 'url_darik', date_of_birth: '1987-03-20')
User.create(name: 'Arnaud', email: 'arnaud@gmail.com', password: '123456', password_confirmation: '123456',
            photo: 'url_arnaud', date_of_birth: '1987-03-20')
Car.create(name: 'Mercedes G550', car_type: 'SUV', brand: 'Mercedes', fee_per_day: 40.20, color: '#000000',
           image: 'some url', rented: false)
@user = User.first
@car = Car.first
Reservation.create(user: @user, car: @car, reservation_date: '2022-11-01', due_date: '2022-11-04')
User.create(name: 'Admin', email: 'admin@gmail.com', password: '123456', password_confirmation: '123456', photo: 'url',
            date_of_birth: '1987-03-20', role: 'admin')
