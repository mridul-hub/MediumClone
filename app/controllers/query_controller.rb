class QueryController < ApplicationController
    skip_before_action :verify_authenticity_token
    def allpostedArticles
        render json: Article.find_by(author_id: @current_user.id)
    end
    
    def articlebyAuthor
        aut = Author.where(:name=>request.headers["authorname"]).ids
        render json: Article.where(:author_id=>aut) 
    end
    
    def articlebyTopic
        render json: Article.where(:topics=>request.headers["topic"])
    end    
        
end
