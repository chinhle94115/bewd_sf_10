class BooksController < ApplicationController
  #any instance variable declared within an action in the controller is now available within the view that has the same name

  def new
  end
#this will retrieve all books thru active record and makes it available to the view
  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def book_params
  end
end
