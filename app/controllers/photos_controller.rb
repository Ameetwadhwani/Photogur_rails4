class PhotosController < ApplicationController

	def index
		@photos = Photo.all

	end

	def show
		@photos = Photo.all
		@photo = @photos[params[:id].to_i]        # variable names are correct according to the tutorial
	end

	        ## rails 4 way of handling attr_accessible


	def create
		@photo = Photo.new(photo_params)
	end



	private

	 def photo_params
		 params.require(:photo).permit(:title, :artist, :url, :properties)
	 end

end
