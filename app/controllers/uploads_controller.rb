class UploadsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        name = params[:data].original_filename
        path = File.join("public","upload", name)
        File.open(path, "wb") { |f| f.write(params[:data].read) }
        render json:"Uploaded successfully"
    end    
end
