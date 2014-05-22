class PhotosController < ApplicationController

		def index
			@photos = Photo.all
			@album = Album.find(params[:album_id])
		end

		def show 
			@album = Album.find(params[:album_id])
			@photo = Photo.find(params[:id])
			@photo.album_id = params[:album_id]
			@photo.save
			@rating = Rating.new
			# @ratings = Photo.ratings
			# @albums = @user.albums
		end

		before_action :require_authentication
		def new 
			@album = Album.find(params[:album_id])
			@photo = Photo.new
			@rating = Rating.new
		end

		def create
			@photo = Photo.new(photo_params)
			@photo.album_id = params[:album_id]
			@photo.save
			if @photo.save
				redirect_to '/albums/' + params[:album_id] #+ '/photos/' + params[:id]
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