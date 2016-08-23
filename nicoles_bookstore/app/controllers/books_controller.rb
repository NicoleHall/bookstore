class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params["format"])

  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    back = Location.find_by(storage_type: "back")
    @book.location = back
    @book.save
    redirect_to books_index_path
  end

  def edit
  end

  def update
  end

  def destroy
    Book.delete(params[:format])
    redirect_to books_index_path
  end

  private
    def book_params
      params.require(:book).permit(:title)
    end

end
