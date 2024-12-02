class AddUniqeIndexToCommunityusers < ActiveRecord::Migration[7.1]
  def change
    add_index :community_users, [:user_id, :community_id], unique: true
  end
end
