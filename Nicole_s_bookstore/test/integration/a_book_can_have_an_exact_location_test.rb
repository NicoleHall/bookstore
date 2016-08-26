require 'test_helper'

class ABookCanHaveAnExactPlacementTest < ActionDispatch::IntegrationTest
  test "A book can have an exact placement" do
    book = Book.find_by(title: "Eloquent Ruby")
    
  end
end
