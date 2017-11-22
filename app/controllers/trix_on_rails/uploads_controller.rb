module TrixOnRails
	class UploadsController < ApplicationController

		before_action :set_upload, only: [:show, :destroy]
		def new
			@upload = TrixOnRails::Upload.new
		end

		def show

		end
		
		def create

		  	@upload = TrixOnRails::Upload.create(upload_params)
		 
		  	respond_to do |format|
			  	if @upload.save
			  		format.html {redirect_to @upload, notice: "succesfully uploaded image"}
			  		format.json {render :show, status: :created, location: "/uploads/#{@upload.id}"} 
			  	else
			  		format.html {render :new }
			  		format.json {render json: @upload.errors, status: :unprocessable_entity}
			  	end  	
		  	end	
	
		end

		def index
		end

		def destroy
			@upload.destroy
			respond_to do |format|
				format.json {  head :no_content }
				format.html { redirect_to uploads_path, notice: 'Upload was successfully destroyed' }
			end
		end


		private

		def upload_params
			params.require(:upload).permit(:image)
		end

		def set_upload
			@upload = TrixOnRails::Upload.find(params[:id])
		end
	end
end

