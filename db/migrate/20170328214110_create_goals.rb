class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.references :futsal_game, foreign_key: true
      t.references :team, foreign_key: true
      t.integer :goal_id
      t.integer :assist_id
      t.integer :time
      t.string :video_link

      t.timestamps
    end
  end
end
