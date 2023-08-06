class Author < ApplicationRecord
    has_secure_password  
    has_many :articles
    has_many :comments
    has_many :articleviews
    # has_many(
    #     :articles,
    #     class_name: 'Article',
    #     foreign_key: 'article_id',
    #     inverse_of: :author,
    #     dependent: :delete_all
    # )
    # has_many(
    #     :comments,
    #     class_name: 'Comment',
    #     foreign_key: 'comment_id',
    #     inverse_of: :author,
    #     dependent: :delete_all
    # )
    # has_many(
    #     :articleviews,
    #     class_name: 'Articleview',
    #     foreign_key: 'articleview_id',
    #     inverse_of: :author,
    #     dependent: :delete_all
    # )
    has_many :primay_followers, :class_name => "Follower", :foreign_key => "followsto_id"
    has_many :secondary_followers, :class_name => "Follower", :foreign_key => "follower_id"   
end
