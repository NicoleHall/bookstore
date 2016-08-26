class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    back_id = Location.find_by(storage_type: "back").id
    @book = Book.create(title: params[:book][:title], location_id: back_id)
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    new_location_id = params[:book][:location_id]
    book = Book.find(params[:id])
    book.update_attributes(location_id: new_location_id)
    redirect_to root_path
  end

  def destroy
    Book.delete(params[:id])
    redirect_to books_path
  end

  def inventory

  end

  private
  def book_params
    params.require(:book).permit(:title)
  end

end
