class CommentsController < ApplicationController 

		def index
			@comments = Comment.all.order(created_at: :asc)
			@comment = Comment.new
			respond_to do |format|
				format.html { }
				format.json { render json: @comments.to_json }
			end
		end

		def edit 
			@comment = Comment.find(params[:id])
			respond_to do |format|
				format.js {}
			end
		end

		def create
			@comment = Comment.create(content: params[:content], photo_id: params[:photo_id])
			current_user.comments << @comment
			respond_to do |format|
				format.html { redirect_to '/' }
				format.js { }
				format.json { render json: [current_user.avatar, @comment].to_json }
			end
		end

		def update 
			@comment = Comment.find(params[:id])
			@comment.update(content: params[:content])
			respond_to do |format|
				format.html { redirect_to @comment }
				format.js  { }
			end
		end

		def destroy
			@comment = Comment.find(params[:id])
			@comment.destroy
			respond_to do |format|
				format.html { redirect_to '/'}
				format.js {  }
				format.json { render json: comment.to_json }
			end
		end
end