class CreateGameRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :game_registrations do |t|
      t.references :user, foreign_key: true
      t.references :futsal_game, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
