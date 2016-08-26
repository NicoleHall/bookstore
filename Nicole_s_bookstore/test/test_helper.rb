ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
class ActiveSupport::TestCase
  include Capybara::DSL

  def setup
    Location.destroy_all

    Location.create!(storage_type: "back", name: "the back")

    6.times do |num|
      Location.create!(storage_type: "shelf", name: "shelf #{num + 1}")
    end

    4.times do |num|
      Location.create!(storage_type: "table", name: "table #{num + 1}")
    end

    Book.create(title: "Eloquent Ruby", location_id: (Location.first.id))  

  end
end
