class AddUserIdToUserPicks < ActiveRecord::Migration[6.0]
  def change
    add_column :user_picks, :user_id, :integer
  end
end
