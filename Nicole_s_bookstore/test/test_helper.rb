ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
class ActiveSupport::TestCase
  include Capybara::DSL

  def setup
    Location.create!([{
      storage_type: "back"
    },
    {
      storage_type: "shelf"
    },
    {
      storage_type: "table"
    }])
    the_back_id = Location.find_by(storage_type: "shelf").id
    book = Book.create(title: "Eloquent Ruby", location_id: the_back_id)

    shelf = Location.find_by(storage_type: "shelf").id
    table = Location.find_by(storage_type: "table").id

    6.times do |num|
      ExactPlacement.create!(name: "shelf #{num + 1}", location_id: shelf)
    end

    4.times do |num|
      ExactPlacement.create!(name: "table #{num + 1}", location_id: table)
    end

    book 
  end
end
