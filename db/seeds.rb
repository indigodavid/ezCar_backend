# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(name: "Admin", email: "admin@mail.com", password: "password", password_confirmation: "password", role: 'admin', photo: "https://avatars.githubusercontent.com/u/76783698?v=4", date_of_birth: "2000-10-11")
Car.create(name: "Toyota", car_type: "Sedan", brand: "Toyota", fee_per_day: 100, color: "White", image: "https://www.toyota.com/imgix/responsive/images/mlp/colorizer/2021/c-hr/01.png?auto=format%2Ccompress&fit=crop&h=300&w=300", rented: false)
Car.create(name: "Honda", car_type: "Sedan", brand: "Honda", fee_per_day: 100, color: "Black", image: "https://www.honda.com.au/content/dam/site/honda/australia/vehicles/civic/2021/overview/overview-1.png", rented: false)
Car.create(name: "BMW", car_type: "Sedan", brand: "BMW", fee_per_day: 100, color: "Red", image: "https://www.bmw.com.au/content/dam/bmw/common/all-models/3-series/sedan/2021/navigation/BMW-3-Series-Sedan-2021-Overview-01.png", rented: false)
Car.create(name: "Mercedes", car_type: "Sedan", brand: "Mercedes", fee_per_day: 100, color: "Blue", image: "https://www.mercedes-benz.com.au/content/dam/mercedes-benz/australia/vehicles/c-class/sedan/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Audi", car_type: "Sedan", brand: "Audi", fee_per_day: 100, color: "White", image: "https://www.audi.com/content/dam/nemo/au/en/audi-cars/models/a4-sedan/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Nissan", car_type: "Sedan", brand: "Nissan", fee_per_day: 100, color: "Black", image: "https://www.nissan.com.au/content/dam/nissan/australia/vehicles/altima/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Mazda", car_type: "Sedan", brand: "Mazda", fee_per_day: 100, color: "Red", image: "https://www.mazda.com.au/content/dam/mazda/australia/vehicles/mazda3/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Hyundai", car_type: "Sedan", brand: "Hyundai", fee_per_day: 100, color: "Blue", image: "https://www.hyundai.com.au/content/dam/hyundai/australia/vehicles/elantra/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Kia", car_type: "Sedan", brand: "Kia", fee_per_day: 100, color: "White", image: "https://www.kia.com/content/dam/kia/australia/vehicles/cerato/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Subaru", car_type: "Sedan", brand: "Subaru", fee_per_day: 100, color: "Black", image: "https://www.subaru.com.au/content/dam/subaru/australia/vehicles/legacy/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Suzuki", car_type: "Sedan", brand: "Suzuki", fee_per_day: 100, color: "Red", image: "https://www.suzuki.com.au/content/dam/suzuki/australia/vehicles/sx4-sportback/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Mitsubishi", car_type: "Sedan", brand: "Mitsubishi", fee_per_day: 100, color: "Blue", image: "https://www.mitsubishi-motors.com.au/content/dam/mitsubishi-motors/australia/vehicles/eclipse-cross/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Ford", car_type: "Sedan", brand: "Ford", fee_per_day: 100, color: "White", image: "https://www.ford.com.au/content/dam/ford/australia/vehicles/focus/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Holden", car_type: "Sedan", brand: "Holden", fee_per_day: 100, color: "Black", image: "https://www.holden.com.au/content/dam/holden/australia/vehicles/commodore/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Volkswagen", car_type: "Sedan", brand: "Volkswagen", fee_per_day: 100, color: "Red", image: "https://www.volkswagen.com.au/content/dam/volkswagen/australia/vehicles/golf/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Peugeot", car_type: "Sedan", brand: "Peugeot", fee_per_day: 100, color: "Blue", image: "https://www.peugeot.com.au/content/dam/peugeot/australia/vehicles/208/2021/navigation/overview/overview-1.png", rented: false)
Car.create(name: "Toyota", car_type: "SUV", brand: "Toyota", fee_per_day: 100, color: "White", image: "https://www.toyota.com/imgix/responsive/images/mlp/colorizer/2021/chr/01.png?auto=format%2Ccompress&fit=crop&h=300&w=300", rented: false)
Car.create(name: "Honda", car_type: "SUV", brand: "Honda", fee_per_day: 100, color: "Black", image: "https://www.honda.com.au/content/dam/site/honda/australia/vehicles/cr-v/2021/navigation/overview/overview-1.png", rented: false)
