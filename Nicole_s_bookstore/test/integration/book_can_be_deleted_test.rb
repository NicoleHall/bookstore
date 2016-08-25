require 'test_helper'

class BookCanBeDeletedTest < ActionDispatch::IntegrationTest
  test "book can be deleted from the database" do
    book = Book.find_by(title: "Eloquent Ruby")
    visit book_path(book)
    click_link "Delete This Book"
    assert_equal nil, Book.find_by(id: book.id)
  end

end
