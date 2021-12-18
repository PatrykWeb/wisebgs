# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



50.times do
  FacilitySport.create(name: Faker::Company.name, country: Faker::Address.country,
                       voivodeship: Faker::Address.state, city: Faker::Address.city,
                       postal_code: Faker::Address.postcode, street: Faker::Address.street_address,
                       status: 1, panel_id: 1)
end