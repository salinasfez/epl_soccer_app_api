class CreateUserPicks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_picks do |t|
      t.string :picks
      t.integer :pick_points
      t.integer :current_points

      t.timestamps
    end
  end
end
