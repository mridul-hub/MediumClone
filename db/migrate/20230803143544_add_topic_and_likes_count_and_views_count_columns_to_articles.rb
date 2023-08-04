class AddTopicAndLikesCountAndViewsCountColumnsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :topics, :string
    add_column :articles, :likesCount, :integer
    add_column :articles, :viewCount, :integer
  end
end
