class Book < ApplicationRecord
  has_one :location
  has_one :exact_placement, through: :location  
end
