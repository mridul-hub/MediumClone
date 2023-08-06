class Article < ApplicationRecord
    belongs_to :author
    validates :author, presence: true
    has_many :comments
    has_many :articleviews  
    # belongs_to(
    #     :author,
    #     class_name: 'Author',
    #     foreign_key: 'author_id',
    #     inverse_of: :'articles',
    #   )
    #   validates :author, presence: true
    # has_many(
    #     :comments,
    #     class_name: 'Comment',
    #     foreign_key: 'comment_id',
    #     inverse_of: :article,
    #     dependent: :delete_all
    # )
    # has_many(
    #     :articleviews,
    #     class_name: 'Articleview',
    #     foreign_key: 'articleview_id',
    #     inverse_of: :article,
    #     dependent: :delete_all
    # )  
end
