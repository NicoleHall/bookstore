class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params["format"])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # private
  #   def book_params
  #     params.require(:book).permit(:title)
  #   end

end
