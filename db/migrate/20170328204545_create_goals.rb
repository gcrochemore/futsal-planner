class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.references :futsal_game, foreign_key: true
      t.references :team, foreign_key: true
      t.integer :goal
      t.integer :assist
      t.integer :time

      t.timestamps
    end
  end
end
