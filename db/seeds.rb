# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Driver.destroy_all

puts 'Creating drivers...'
drivers_attributes = [
  {
    first_name:         'Bob',
    last_name:      'Dylan',
    phone_number:  '0612345678'
  },
  {
    first_name:         'Pizza East',
    last_name:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '0612345679'
  }
]
Driver.create!(drivers_attributes)
puts 'Finished!'
