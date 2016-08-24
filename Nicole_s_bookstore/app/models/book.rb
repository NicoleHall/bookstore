class Book < ApplicationRecord
  belongs_to :location

  # def self.move_book_to_new_location(new_location)
  #   new_location = new_location.downcase
  #   table = Location.find_by(storage_type: "table")
  #   shelf = Location.find_by(storage_type: "shelf")
  #   back = Location.find_by(storage_type: "back")
  #
  #   if new_location == "table"
  #     update_attributes(location_id: )
  #   end
  #
  # end
end
