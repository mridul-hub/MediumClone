class ArticlesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def home
        render json: Article.all
    end
    def create
        @newarticle =  Article.new(title: params[:title], topics: params[:topics], description: params[:description],likesCount:0,viewCount:1,author_id: @current_user.id)
        begin
            @newarticle.save
            render json: @newarticle
        rescue Exception => e
            render json: {error:e}  
        end  
    end
    def delete
        render json: Article.destroy_by(id: params[:id])
    end
    def getbyid
        begin
            @article = Article.find(params[:id])
            @article.viewCount += 1
            @article.save
            render json: @article
        rescue Exception => e
            render json: {error:e}
        end        
    end    
end

 