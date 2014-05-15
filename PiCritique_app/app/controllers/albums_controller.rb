class AlbumsController < ApplicationController

		def index
			@albums = Album.all
		end

		def show
			@album = Album.find(params[:id])
			@photo = Photo.new
		end

		def new 
			@album = Album.new
		end

		def create
			@album = Album.new(album_params)
			if @album.save
				redirect_to @album, notice: 'Your album was successfully created'
			else 
				render action: 'new'
			end
		end

		def edit
			@album = Album.find(params[:id])
			if current_user == @album || admin?
				render 'edit'
			else
				redirect_to albums_path
			end
		end

		def update
			@album = Album.find(params[:id])
			if current_user == @user || admin?
				@album.update(album_params)
				redirect_to @album
			else
				redirect_to albums_path
			end
		end

		private
		def album_params
			params.require(:album).permit(:name, :cover_photo)
		end

end

