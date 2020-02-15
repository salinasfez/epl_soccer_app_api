class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :favorite_team
      t.integer :pick_points
      t.integer :current_points
      t.string :image

      t.timestamps
    end
  end
end
