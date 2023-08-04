class Article < ApplicationRecord
    belongs_to(
        :author,
        class_name: 'Author',
        foreign_key: 'author_id',
        inverse_of: :'articles',
      )
      validates :author, presence: true
end
