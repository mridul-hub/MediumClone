class AddNewindexToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_index :authors,:password_digest
  end
end
