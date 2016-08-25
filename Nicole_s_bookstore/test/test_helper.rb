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
    Book.create(title: "Eloquent Ruby", location_id: the_back_id)
  end
end
