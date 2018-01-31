class SongControllerController < ApplicationController

	def index
		@songs = Song.all
	end

	def create
		song = Song.create! params.require(:mp3).permit(:title, :artist, :album, :genre, :year, :plays)
		song.mp3.attach(params[:song][:mp3])
		redirect_to song
	end

	def show
		@song = Song.find(params[:id])
	end

end
