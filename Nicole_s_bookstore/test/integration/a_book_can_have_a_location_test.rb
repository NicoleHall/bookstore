require 'test_helper'

class ABookCanHaveALocationTest < ActionDispatch::IntegrationTest
  test "A book can have an exact placement" do
    book = Book.find_by(title: "Eloquent Ruby")
    assert_equal "the back", Location.find(book.location_id).name
  end
end
