class SongsController < ApplicationController

  def new
     @song = Song.new

  end

  def list
   @songs = Song.all
  end

  def create
   @song = Song.new(song_params)

   if @song.save
      redirect_to :action => 'list'
    else

       render :action => 'new'

      end

  end

  def song_params
     params.require(:songs).permit(:name,:atrist_id)
  end

  def delete
   @song = Song.find(params[:id])

   @song.destroy

   redirect_to songs_path
  end

 end
