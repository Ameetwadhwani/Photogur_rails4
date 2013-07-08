class PhotosController < ApplicationController
	before_action :set_photo, only: [:show, :edit, :update, :destroy]

	def index
		@photos = Photo.all

	end

	def show
		@photo = Photo.find(params[:id])
		#@photos = Photo.all
		#@photo = @photos[params[:id].to_i]        # variable names are correct according to the tutorial
	end

	        ## rails 4 way of handling attr_accessible




	def new
		@photo = Photo.new
		#raise @photo.inspect
	end

	# GET /photos/1/edit
	def edit
		@photo = Photo.find(params[:id])

	end


	def create
		#@photo = Photo.new(photo_params)  # changed to Photo.new(photo_params) after form submit error
		#Photo.create(photo_params) # errors still - 'photo' param not found
		@photo = Photo.new(photo_params)
		#render :text => "Saving a photo. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"


		respond_to do |format|
			if @photo.save
				format.html { redirect_to photos_path , notice: 'Photo was successfully created.' }
				format.json { render action: 'show', status: :created, location: @photo }
			else
				format.html { render action: 'new', flash[:alert] => 'Missing fields'}
				format.json { render json: @photo.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /photos/1.json
	def update
		respond_to do |format|
			if @photo.update(photo_params)
				format.html { redirect_to photos_url, notice: 'Photo was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @photo.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@photo.destroy
		respond_to do |format|
			format.html { redirect_to photos_url }
			format.json { head :no_content }
		end
	end


	private

	# Use callbacks to share common setup or constraints between actions.
	def set_photo
		@photo = Photo.find(params[:id])
	end


	def photo_params

		params.require(:photo).permit(:title, :artist, :url, :properties)
	 end

end


