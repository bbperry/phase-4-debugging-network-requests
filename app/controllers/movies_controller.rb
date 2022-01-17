class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    render json: Movie.create!(movie_params)
  end


  private

  def movie_params
    params.permit(:title, :year, :director, :description, :poster_url, :category, :discount, female_director)
  end

end


t.string "title"
    t.integer "year"
    t.integer "length"
    t.string "director"
    t.string "description"
    t.string "poster_url"
    t.string "category"
    t.boolean "discount"
    t.boolean "female_director"