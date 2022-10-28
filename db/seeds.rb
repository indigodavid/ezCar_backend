# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Admin", email: "admin@mail.com", password: "password", password_confirmation: "password", role: 'admin', photo: "https://avatars.githubusercontent.com/u/76783698?v=4", date_of_birth: "2000-10-11")
Car.create(name: "Toyota", car_type: "Sedan", brand: "Toyota", fee_per_day: 100, color: "White", image: "https://images.unsplash.com/photo-1559416523-140ddc3d238c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dG95b3RhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Honda", car_type: "Sedan", brand: "Honda", fee_per_day: 100, color: "Black", image: "https://images.unsplash.com/photo-1600259828526-77f8617ceec9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvbmRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "BMW", car_type: "Sedan", brand: "BMW", fee_per_day: 100, color: "Red", image: "https://images.unsplash.com/photo-1617531653332-bd46c24f2068?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJtd3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Mercedes", car_type: "Sedan", brand: "Mercedes", fee_per_day: 100, color: "Blue", image: "https://images.unsplash.com/photo-1617531653332-bd46c24f2068?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJtd3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Audi", car_type: "Sedan", brand: "Audi", fee_per_day: 100, color: "White", image: "https://images.unsplash.com/photo-1606152421802-db97b9c7a11b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGF1ZGl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Nissan", car_type: "Sedan", brand: "Nissan", fee_per_day: 100, color: "Black", image: "https://images.unsplash.com/photo-1609521263047-f8f205293f24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bmlzc2FufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Mazda", car_type: "Sedan", brand: "Mazda", fee_per_day: 100, color: "Red", image: "https://images.unsplash.com/photo-1586464836139-86553c751f65?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fG1hemRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Hyundai", car_type: "Sedan", brand: "Hyundai", fee_per_day: 100, color: "Blue", image: "https://images.unsplash.com/photo-1629421889558-e2315ffc869d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGh5dW5kYWl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Subaru", car_type: "Sedan", brand: "Subaru", fee_per_day: 100, color: "Black", image: "https://images.unsplash.com/photo-1626443252351-4f3a387d6d43?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHN1YmFydXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Ford", car_type: "Sedan", brand: "Ford", fee_per_day: 100, color: "White", image: "https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Kia", car_type: "Sedan", brand: "Kia", fee_per_day: 100, color: "Red", image: "https://images.unsplash.com/photo-1617531653332-bd46c24f2068?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJtd3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Toyota", car_type: "Sedan", brand: "Toyota", fee_per_day: 100, color: "Blue", image: "https://images.unsplash.com/photo-1617531653332-bd46c24f2068?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJtd3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Honda", car_type: "Sedan", brand: "Honda", fee_per_day: 100, color: "White", image: "https://images.unsplash.com/photo-1606152421802-db97b9c7a11b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGF1ZGl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Toyota", car_type: "SUV", brand: "Toyota", fee_per_day: 100, color: "White", image: "https://images.unsplash.com/photo-1638618164682-12b986ec2a75?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", rented: false)
Car.create(name: "Honda", car_type: "SUV", brand: "Honda", fee_per_day: 100, color: "Black", image: "https://images.unsplash.com/photo-1600706432502-77a0e2e32790?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGhvbmRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", rented: false)

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
