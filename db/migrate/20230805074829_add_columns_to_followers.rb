class AddColumnsToFollowers < ActiveRecord::Migration[7.0]
  def change
    add_column :followers, :followsto_id, :integer
    add_column :followers, :follower_id, :integer
  end
end
