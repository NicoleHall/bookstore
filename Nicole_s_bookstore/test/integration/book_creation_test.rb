require 'test_helper'

class BookCreationTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  test "a book can be created and user is redirected to index" do
    visit new_book_path
    fill_in "Title", with: "The Passionate Programmer"
    click_button "Create"
    assert_equal current_path, books_path
    book = Book.find_by(title: "The Passionate Programmer")
    assert book.save
    assert_equal "back", Location.find(book.location_id).storage_type
  end

  test "a book is created with a default storage_type of back" do
    visit new_book_path
    fill_in "Title", with: "The Passionate Programmer"
    click_button "Create"
    book = Book.find_by(title: "The Passionate Programmer")
    assert_equal "back", Location.find(book.location_id).storage_type
  end
end
