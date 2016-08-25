require 'test_helper'

class BookLocationCanBeUpdatedTest < ActionDispatch::IntegrationTest
  test "Book location can be updated" do
    book = Book.find_by(title: "Eloquent Ruby")
    visit edit_book_path(book)
    fill_in "book[location_id]", with: "shelf"
    click_button "Save changes"
    assert current_path, books_path(book)
    assert_equal "shelf", Location.find(book.location_id).storage_type
  end

  test "Book location can be updated if in all caps" do
    book = Book.find_by(title: "Eloquent Ruby")
    visit edit_book_path(book)
    fill_in "book[location_id]", with: "SHELF"
    click_button "Save changes"
    assert current_path, books_path(book)
    assert_equal "shelf", Location.find(book.location_id).storage_type
  end
end
