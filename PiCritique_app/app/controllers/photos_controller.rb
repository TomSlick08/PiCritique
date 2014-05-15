class PhotosController < ApplicationController

		def index
			@photos = Photo.all
		end

		def show 
			@photo = Photo.find(params[:id])
			# @albums = @user.albums
		end

		before_action :require_authentication
		def new 
			@album = Album.find(params[:album_id])
			@photo = Photo.new

		end

		def create
			@photo = Photo.new(photo_params)
			if @photo.save
				redirect_to '/albums/' + params[:album_id] + '/photos'
			else
				render 'new'
			end
		end

		def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
		redirect_to photos_path
		end

		private 
		def photo_params
				params.require(:photo).permit(:content, :caption)
		end

end