class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    back = Location.find_by(storage_type: "back")
    @book.location = back
    @book.save
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])

  end

  def update
    new_storage_type = params[:book][:location_id]
    new_location_id = Location.find_by(storage_type: new_storage_type).id
    book = Book.find(params[:id])
    book.update_attributes(location_id: new_location_id)
    redirect_to book_path(book)
  end

  def destroy
    Book.delete(params[:id])
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title)
  end

end
