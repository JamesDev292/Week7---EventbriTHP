# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



# Création de plusieurs événements
Event.create([
  { title: 'Soirée Jazz', description: 'Venez profiter d\'une soirée jazz en plein air', start: DateTime.now + 3.days, duration: 120, price: 20, location: 'Paris', admin_id: User.first.id },
  { title: 'Atelier Peinture', description: 'Apprenez les bases de la peinture avec des experts', start: DateTime.now + 7.days, duration: 180, price: 45, location: 'Lyon', admin_id: User.second.id },
  { title: 'Cours de Cuisine', description: 'Découvrez la cuisine locale et préparez des plats délicieux', start: DateTime.now + 10.days, duration: 90, price: 30, location: 'Marseille', admin_id: User.first.id },
  { title: 'Conférence Technologie', description: 'Conférence sur les innovations technologiques actuelles', start: DateTime.now + 15.days, duration: 240, price: 60, location: 'Bordeaux', admin_id: User.second.id },
  { title: 'Randonnée en Montagne', description: 'Passez une journée en montagne avec un guide', start: DateTime.now + 20.days, duration: 300, price: 25, location: 'Grenoble', admin_id: User.first.id }
])
