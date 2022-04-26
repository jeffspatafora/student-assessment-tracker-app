# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Dr Katie", email: "drkatie@email.com", password: "password", password_confirmation: "password")
User.create!(name: "Dr Chauncey", email: "cbillups@email.com", password: "password", password_confirmation: "password")
User.create!(name: "Dr Brian", email: "drbrian@email.com", password: "password", password_confirmation: "password")

Student.create!(name: "halley", email: "halley@email.com")
Student.create!(name: "petey", email: "petey@email.com")
Student.create!(name: "penny", email: "penny@email.com")
Student.create!(name: "joey", email: "joey@email.com")

Project.create!(title: "add", section: "math", section_number: 382)
Project.create!(title: "divide", section: "math", section_number: 382)
Project.create!(title: "domain and range", section: "math", section_number: 383)
Project.create!(title: "limits", section: "math", section_number: 400)