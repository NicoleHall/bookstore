class Location < ApplicationRecord
  has_many :books

  # validate :validate_shelf_storage
  #
  # def validate_shelf_storage
  #   shelves = Location.where(storage_type: "shelf")
  #   shelves.each do |shelf|
  #    errors.add(:locations, "this shelf is full") if locations.size > 6
  #  end
  # end
end
