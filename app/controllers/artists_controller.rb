class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new

  end

  def create
    artist = Artist.new(artist_params)
    if artist.save
      redirect_to artists_path
    else
      binding.pry
      flash[:notice] = "Artist not created: Required information missing."
      binding.pry
      render :new
    end
  end

  private

  def artist_params
    params.permit(:name, :id)
  end
end
