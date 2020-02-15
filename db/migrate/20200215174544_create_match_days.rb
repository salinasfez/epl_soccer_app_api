class CreateMatchDays < ActiveRecord::Migration[6.0]
  def change
    create_table :match_days do |t|
      t.integer :day
      t.string :game
      t.string :team_a
      t.integer :team_a_points
      t.string :team_b
      t.integer :team_b_points

      t.timestamps
    end
  end
end
