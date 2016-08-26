Location.destroy_all

Location.create!(storage_type: "back", name: "the back")

6.times do |num|
  Location.create!(storage_type: "shelf", name: "shelf #{num + 1}")
end

4.times do |num|
  Location.create!(storage_type: "table", name: "table #{num + 1}")
end

Location.all.each do |location|
  p "created #{location.name}"
end

# expected console output after seed file is run:
# "created the back"
# "created shelf 1"
# "created shelf 2"
# "created shelf 3"
# "created shelf 4"
# "created shelf 5"
# "created shelf 6"
# "created table 1"
# "created table 2"
# "created table 3"
# "created table 4"
