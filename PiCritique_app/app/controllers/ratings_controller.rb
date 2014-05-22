class RatingsController < ApplicationController 

		def index 
			@ratings = Rating.where(:photo_id == params[:photo_id])
			@rating = Rating.find(params[:rating_id])
		end

		def show
			@rating = Rating.find(params[:rating_id])
		end

		def new 
			@rating = Rating.new()
		end

		def create
			@rating = Rating.create(rating_params)
			respond_to do |format|
						if @rating.save
						@rating.photo_id = params[:photo_id]
						@rating.save
						format.html { redirect_to @photo, notice: 'Your rating has been saved.' }
						format.js { }
						format.json { render json: @rating.to_json }
						else 
							format.html { render action: "new"}
							format.json { render json: @rating.errors, status: :unprocessable_entity}
						end
				end
		end

		def destroy 
				@rating = Rating.find(params[:rating_id])
				@rating.destroy
		end

		private 
		def rating_params
			params.require(:rating).permit(:setting, :hotness, :originality, :style, :attitude)
		end
end