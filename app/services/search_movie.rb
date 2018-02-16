class SearchMovie

  def initialize(movie)
    @movie = movie
  end

  def log_in
    Tmdb::Api.key(ENV['MOVIE_DB_KEY'])
  end

  def result
    log_in
    #if !@movie.length >
        Tmdb::Movie.find(@movie)
    #end
  end

end
