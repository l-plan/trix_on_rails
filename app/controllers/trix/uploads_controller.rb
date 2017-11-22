module Trix
	class UploadsController < ApplicationController
		def new
			@upload = Trix::Upload.new
		end

		def show
	
			@upload = Trix::Upload.find(params[:id])
			# render json: {file: File.read @upload.image.path}
		end
		
		def create

		  	@upload = Trix::Upload.create(upload_params)
		 
		  	respond_to do |format|
			  	if @upload.save
			  		format.html {redirect_to @upload, notice: "succesfully uploaded image"}
			  		format.json {render :show, status: :created, location: "/uploads/#{@upload.id}"} 
			  	  # render json: { message: "success" , url: @upload.image.url}, :status => 200
			  	else
			  		format.html {render :new }
			  		format.json {render json: @upload.errors, status: :unprocessable_entity}
			  	  # render json: { error: @upload.errors.full_messages.join(',')}, :status => 400
			  	end  	
		  	end	
	
		end

		def index
		end

		  def destroy

		  	@upload = Trix::Upload.find(params[:id])
		    @upload.destroy
		    respond_to do |format|
		      # format.html { redirect_to uploads_path, notice: 'Upload was successfully destroyed' }
		      format.json {  head :no_content }
		      format.html { redirect_to uploads_path, notice: 'Upload was successfully destroyed' }
    		end
		  end


		private

		def upload_params
			params.require(:upload).permit(:image)
		end
	end
end

    # respond_to do |format|
    #   format.json { render :json => { url: Refile.attachment_url(@image, :image)} }
    # end

            # url: response.url
        # image_id: response.image_id
        # href: response.url