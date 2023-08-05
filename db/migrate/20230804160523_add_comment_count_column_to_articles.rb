class AddCommentCountColumnToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :commentCount, :integer
  end
end
