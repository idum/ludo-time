# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

evento1=Event.create!(title: "Evento ludico 1", location: "Via Pio Panfili 211, Porto San Giorgio", date: Date.today + 1.month)
evento2=Event.create!(title: "Evento ludico 2", location: "Ascoli Piceno", date: Date.today + 2.month)
evento3=Event.create!(title: "Evento ludico 3", location: "Ancona", date: "21-09-2026")

User.create!(email:"me@me.me", password: "mememe", admin:true)
User.create!(email:"a@a.a", password: "password")