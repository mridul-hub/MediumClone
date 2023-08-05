class AuthorsController < ApplicationController
    skip_before_action :authenticate_request
    skip_before_action :verify_authenticity_token
    
    def register
        @newuser =  Author.new(name:params[:name],email:params[:email],password:params[:password])
        begin
            @newuser.save
            render json: @newuser
        rescue Exception => e
            puts e
            render json: {error: e}
        end      
    end

    def login
        command = AuthenticateUser.call(params[:email], params[:password])
        if command.success?
            render json: { auth_token: command.result,user: Author.find_by(email:params[:email]) }
        else
            render json: { error: command.errors }, status: :unauthorized
        end
    end    

    def allpostedArticles
        render json: Article.find_by(author_id: @current_user.id)
    end    
end
