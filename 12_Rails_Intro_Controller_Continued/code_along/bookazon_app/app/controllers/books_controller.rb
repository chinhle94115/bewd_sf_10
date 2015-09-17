class BooksController < ApplicationController

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
<<<<<<< HEAD
    #permit allows what parameters can be changed
=======
>>>>>>> 2551ef5d434904e9f421d37e3bc9b7e657bfafc3
  end

  def get_book
    Book.find(params[:id])
<<<<<<< HEAD

=======
>>>>>>> 2551ef5d434904e9f421d37e3bc9b7e657bfafc3
  end
end
