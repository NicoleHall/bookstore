require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get books_url
    assert_response :success
    assert_equal Book.first.title, "Eloquent Ruby"
  end
end
