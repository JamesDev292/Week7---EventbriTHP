# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Créer quelques utilisateurs
User.create!(first_name: "John", last_name: "Doe", email: "john292@yopmail.com", description: "A regular user")
User.create!(first_name: "Jane", last_name: "Smith", email: "jane292@yopmail.com", description: "Another user")
User.create!(first_name: "James", last_name: "Rolo", email: "james292@yopmail.com", description: "Another user")

