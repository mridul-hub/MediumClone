class AddReferenceToArticleviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :articleviews, :article, foreign_key: true
    add_reference :articleviews, :author, foreign_key: true
  end
end
