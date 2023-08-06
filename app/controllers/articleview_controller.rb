class ArticleviewController < ApplicationController
    skip_before_action :verify_authenticity_token
    def createview
        begin
            @article = Article.find(params[:id])
            @article.viewCount += 1
            @article.save
            @view = Articleview.find_by(article_id: params[:id],author_id: @current_user.id)
            if @view
            else
                Articleview.create(article_id: params[:id],author_id: @current_user.id)
            end        
            render json: @article
        rescue Exception => e
            render json: {error:e}
        end
    end
    def recomendation
        @data = Articleview.where(:author_id=>@current_user.id)
        @topiclist = Array.new
        for items in @data
            @topiclist.push(Article.find(items.article_id).topics) unless @topiclist.include?(Article.find(items.article_id).topics)
        end        
        @follow = Follower.where(:follower_id =>@current_user.id)
        # render json: @follow
        @authorlist_id = Array.new
        for follows in @follow
            @authorlist_id.push(follows.followsto_id)
        end
        puts @authorlist_id
        render json: Article.where(:topics =>@topiclist).or(Article.where(:author_id => @authorlist_id))   
    end        
end
