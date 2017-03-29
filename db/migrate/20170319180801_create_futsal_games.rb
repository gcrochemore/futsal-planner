class CreateFutsalGames < ActiveRecord::Migration[5.0]
  def change
    create_table :futsal_games do |t|
      t.datetime :date
      t.integer :duration
      t.references :futsal_field, foreign_key: true
      t.integer :team_home_id
      t.integer :team_outside_id
      t.integer :score_home
      t.integer :score_outside
      t.string :video_link
      t.string :match_resume_link

      t.timestamps
    end
  end
end
