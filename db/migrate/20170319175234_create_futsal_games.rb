class CreateFutsalGames < ActiveRecord::Migration[5.0]
  def change
    create_table :futsal_games do |t|
      t.datetime :date
      t.integer :duration
      t.integer :team_home_id
      t.integer :team_outside_id
      t.integer :score_home
      t.integer :score_outside

      t.timestamps
    end
  end
end
