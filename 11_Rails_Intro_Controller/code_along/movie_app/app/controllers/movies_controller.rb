class MoviesController < ApplicationController
  def new
  end

  def show
  end

  def edit
  end

  def index
    @movies = Movie.all
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def movie_params
  end

end
