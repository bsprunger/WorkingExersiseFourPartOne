class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    
    def movie_params
        params.require(:movie).permit(:title, :rating, :description, :release_date)
    end
    
    def show
        id = params[:id]        # get params from the url
        @movie = Movie.find(id)    # give me that movie, by title
    end
    
    def create
        @movie = Movie.create!(movie_params)
        flash[:notice] = "#{@movie.title} was successfully created!"
        redirect_to movies_path
    end
    
    def new
        # default: render 'new' template
        
    end
end