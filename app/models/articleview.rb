class Articleview < ApplicationRecord
    belongs_to :author
    belongs_to :article
    # belongs_to(
    #     :author,
    #     class_name: 'Author',
    #     foreign_key: 'author_id',
    #     inverse_of: :'articleviews',
    #   )
      validates :author, presence: true
      # belongs_to(
      #   :article,
      #   class_name: 'Article',
      #   foreign_key: 'article_id',
      #   inverse_of: :'articleviews',
      # )
      validates :article, presence: true
end
