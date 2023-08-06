class FollowersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def followto
        @quer  = Follower.find_by(followsto_id: params[:followsto_id], follower_id: @current_user.id)
        if @quer
            render json: {message:'Already Being Followed'}
        else
            puts params[:followsto_id]
            render json: Follower.create(followsto_id: params[:followsto_id],follower_id: @current_user.id)
        end    
    end
    def followedbyuser
        render json: Follower.where(:follower_id => params[:id])
    end
    def followersofuser
        render json: Follower.where(:followsto_id=>params[:id])
    end            
end
