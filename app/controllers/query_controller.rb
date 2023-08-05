class QueryController < ApplicationController
    skip_before_action :verify_authenticity_token
    def allpostedArticles
        render json: Article.where(author_id: @current_user.id)
    end
    
    def articlebyAuthor
        aut = Author.where(:name=>request.headers["authorname"]).ids
        render json: Article.where(:author_id=>aut) 
    end
    
    def articlebyTopic
        render json: Article.where(:topics=>request.headers["topic"])
    end    

    def searchuser
        render json: Author.where(:name=>request.headers["username"])
    end      
end
