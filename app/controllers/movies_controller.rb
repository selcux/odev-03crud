class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create

  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])

    if movie.update(movie_params(params))
      redirect_to movie_path(id: movie.id)
    else
      redirect_to root_path, notice: "Güncelleme hatası!"
    end
  end

  def destroy
    movie = Movie.find(params[:id])

    if movie.destroy
      redirect_to root_path, notice: "Başarıyla silindi"
    else
      redirect_to root_path, notice: "Silme hatası!"
    end
  end

  def movie_params(m)
    {title: m[:title], director: m[:director], description: m[:description], country: m[:country], date: m[:date]}
  end
end
