# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ExactPlacement.destroy_all
Location.destroy_all

Location.create!([{
  storage_type: "back"
},
{
  storage_type: "shelf"
},
{
  storage_type: "table"
}])

p "Created #{Location.count} locations"

shelf = Location.find_by(storage_type: "shelf").id
table = Location.find_by(storage_type: "table").id

6.times do |num|
  ExactPlacement.create!(name: "shelf #{num + 1}", location_id: shelf)
end

4.times do |num|
  ExactPlacement.create!(name: "table #{num + 1}", location_id: table)
end

ExactPlacement.all.each do |ep|
  p ep.name
end

# expected console output after running seed file
# "Created 3 locations"
# "shelf 1"
# "shelf 2"
# "shelf 3"
# "shelf 4"
# "shelf 5"
# "shelf 6"
# "table 1"
# "table 2"
# "table 3"
# "table 4"
