class PagesController < ApplicationController
  def home
    @movies = Movie.count
  end
end
