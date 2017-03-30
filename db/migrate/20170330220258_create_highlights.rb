class CreateHighlights < ActiveRecord::Migration[5.0]
  def change
    create_table :highlights do |t|
      t.string :name
      t.references :highlight_type, foreign_key: true
      t.integer :author_id
      t.integer :victim_id
      t.integer :time
      t.references :futsal_game, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
