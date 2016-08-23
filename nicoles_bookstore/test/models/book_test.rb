require 'test_helper'

class BookTest < ActiveSupport::TestCase

  test "a book should be created with a default location id of 1" do
    poodr = Book.create(title: "Practical Object-Oriented Design in Ruby")
    back = Location.find_by(storage_type: "back")

    assert_equal poodr.location.storage_type, "back"
  end
end
