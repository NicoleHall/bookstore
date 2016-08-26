class BooksController < ApplicationController
before_action :check_shelf_storage, only: [:update]
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    #all books added to the database have a default location of "The Back"
    back_id = Location.find_by(storage_type: "back").id
    @book = Book.create(title: params[:book][:title], location_id: back_id)
    redirect_to root_path
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

  def search
  end

  def search_result
    searched_title = params[:q]
    book = Book.find_by(title: searched_title)
      if book
        redirect_to book_path(book)
      else
        flash[:notice] = "we do not sell #{searched_title} at Nicole's Bookstore"
        redirect_to root_path
      end
  end


  private
  def book_params
    params.require(:book).permit(:title)
  end

  def check_shelf_storage
    location = Location.find(params[:book][:location_id])
    if location.storage_type == "shelf" && location.books.count >= 6
      flash[:danger] = "Shelf Is Full"
      redirect_to location_path(location)
    end
  end

end
