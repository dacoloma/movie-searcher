require 'uri'
class MoviesController < ApplicationController

  def search
  end

  def result
    $results = SearchMovie.new(params[:movie][:search]).result
    new_uri
    redirect_to root_path
  end

  private
  def new_uri
    if !$results.nil?
      $results.each do |result|
        result.poster_path = "https://image.tmdb.org/t/p/w500" + result.poster_path.to_s unless   result.poster_path.nil?
      end
    end
  end

end
