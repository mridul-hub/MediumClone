class Comment < ApplicationRecord
    belongs_to :article
    belongs_to :author
    # belongs_to(
    #     :article,
    #     class_name: 'Article',
    #     foreign_key: 'article_id',
    #     inverse_of: :'comments',
    #   )
      validates :article, presence: true
    # belongs_to(
    #     :author,
    #     class_name: 'Author',
    #     foreign_key: 'author_id',
    #     inverse_of: :'comments',
    #   )
      validates :author, presence: true  
end
