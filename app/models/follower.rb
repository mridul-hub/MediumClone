class Follower < ApplicationRecord
    belongs_to :followsto, :class_name => "Author"
    belongs_to :follower, :class_name => "Author"
    # belongs_to(
    #     :author,
    #     class_name: 'Author',
    #     foreign_key: 'followsto_id',
    #     inverse_of: :'followers',
    #   )
    # validates :author, presence: true
    # belongs_to(
    #     :author,
    #     class_name: 'Author',
    #     foreign_key: 'follower_id',
    #     inverse_of: :'followers',
    #   )
    #   validates :author, presence: true
end
