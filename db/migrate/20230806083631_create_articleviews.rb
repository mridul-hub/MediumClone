class CreateArticleviews < ActiveRecord::Migration[7.0]
  def change
    create_table :articleviews do |t|
      t.timestamps
    end
  end
end
