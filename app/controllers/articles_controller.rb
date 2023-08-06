class ArticlesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def home
        render json: Article.all
    end
    def create
        puts "start-data"
        puts Float(params[:description].length)/200
        @newarticle =  Article.new(title: params[:title], topics: params[:topics], description: params[:description],readingTime: (Float(params[:description].length)/200).ceil(),likesCount:0,viewCount:1,author_id: @current_user.id,commentCount:0)
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
    def like
        @article = Article.new(params[:article_id])
        begin
            @article.likesCount = @article.likesCount + 1
            @article.save
            render json: {Message:"Liked Increased Succesfully"}
        rescue Exception => e
            render json: {error:e}
        end        
    end
 
           
end

 