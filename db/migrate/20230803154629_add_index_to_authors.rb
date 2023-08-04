class AddIndexToAuthors < ActiveRecord::Migration[7.0]
  def change
   change_column(:authors,:email,:string,null:false)
   add_index :authors, :email, unique: true
  end
end
