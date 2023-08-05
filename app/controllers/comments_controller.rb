class CommentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def addComment
        @comment = Comment.new(commentContent: params[:commentContent],author_id:@current_user.id,article_id:params[:article_id])
        begin
            @comment.save
            @arti = Article.find(params[:article_id])
            @arti.commentCount =  @arti.commentCount + 1
            @arti.save 
            render json: @comment
        rescue Exception => e
            render json: {error:e}
        end           
    end
    def getCommentsofArticle
        render json: Comment.where(:article_id=>params[:article_id])
    end
   
end
