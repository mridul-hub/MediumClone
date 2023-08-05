class Author < ApplicationRecord
    has_secure_password  
    has_many(
        :articles,
        class_name: 'Article',
        foreign_key: 'article_id',
        inverse_of: :author,
        dependent: :delete_all
    )
    has_many(
        :comments,
        class_name: 'Comment',
        foreign_key: 'comment_id',
        inverse_of: :author,
        dependent: :delete_all
    )  
end
