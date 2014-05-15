class CommentsController < ApplicationController 

		def index
			@comments = Comment.all.order(created_at: :asc)
			@comment = Comment.new
			respond_to do |format|
				format.html { }
				format.json { render json: @comments.to_json }
		end

		def edit 
			@comment = Comment.find(params[:id])
			respond_to do |format|
				format.js {}
			end
		end

		def create
			@comment = Comment.new(content: params[:comment][:content])
			respond_to do |format|
				format.html { redirect_to '/'}
				format.js { }
				format.json { render json: comment.to_json }
		end

		def update 
			@comment = Comment.find(params[:id])
			@comment.update(content: params[:comment][:content])
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