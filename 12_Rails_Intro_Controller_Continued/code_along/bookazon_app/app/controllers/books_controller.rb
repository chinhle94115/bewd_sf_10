class BooksController < ApplicationController

  #READ: this will retrieve all books thru active_record
  def index
    @books = Book.all
  end

  def show
    @book = get_book
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

  def edit
    @book = get_book
  end

  def update
    @book = get_book
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
#private methods only available to the methods in this class; therefore, it's a security issue

  def book_params
    params.require(:book).permit(:title, :year_published, :author, :available, :genre, :image_url)
    #permit allows what parameters can be changed
  end

  def get_book
    Book.find(params[:id])

  end
end
