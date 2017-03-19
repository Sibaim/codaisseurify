class ArtistsController < ApplicationController

  def list
   @artists = Artist.all
  end

  def index
      @artists = Artist.all
    end

    def show
    @artist = Artist.find(params[:id])

    end


    def delete
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to :action => 'list'
  end

  def artist_params
      params.require(:artists).permit(:name)
   end

end
