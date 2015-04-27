class FeaturesController < ApplicationController
	Time.zone = "Pacific Time (US & Canada)"

	def index
		@features = Feature.all
		
	end

	def show
		@feature = Feature.find(params[:id])

		@comment = Comment.new
		@comment.feature_id = @feature.id
	end

	def new
		if current_user 
			@feature = Feature.new
		else
			redirect_to "/login"
		end
	end

	def create
		@feature = Feature.new(params.require(:feature).permit(:title, :body))
  		@feature.user = current_user
  		@feature.save

  		flash.notice = "Blog Post '#{@feature.title}' Added!"

  		redirect_to feature_path(@feature)
	end

	def destroy
		@feature = Feature.find(params[:id])
		@feature.destroy

		flash.notice = "Blog Post '#{@feature.title}' Deleted!"
		redirect_to features_path
	end

	def edit
		@feature = Feature.find(params[:id])
	end

	def update
  		@feature= Feature.find(params[:id])
  		@feature.update(params.require(:feature).permit(:title, :body))

  		flash.notice = "Blog Post '#{@feature.title}' Updated!"

  		redirect_to feature_path(@feature)
	end


end
