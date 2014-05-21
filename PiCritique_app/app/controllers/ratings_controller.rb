class RatingsController < ApplicationController 

		def index 
			@ratings = Rating.where(:photo_id == params[:photo_id])
			@rating = Rating.find(params[:rating_id])
		end

		def show
			@rating = Rating.find(params[:rating_id])
		end

		def new 
			@ratings = Rating.new()
		end

		def create
			@rating = Rating.create(rating_params)
			def create
			@rating = Rating.create(setting: params[:setting], hotness: params[:hotness], originality: params[:originality], style: params[:style], attitude: params[:attitude])
			respond_to do |format|
				format.html { redirect_to '/' }
				format.js { }
				format.json { render json: @rating.to_json }
			end
		end

		def destroy 
				@rating = Rating.find(params[:rating_id])
				@rating.destroy
		end

		# private 
		# def rating_params
		# 	params.require(:rating).permit(:setting, :hotness, :originality, :style, :attitude)
		# end
end