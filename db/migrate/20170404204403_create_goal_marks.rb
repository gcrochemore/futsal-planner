class CreateGoalMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :goal_marks do |t|
      t.references :goal, foreign_key: true
      t.integer :mark
      t.references :user, foreign_key: true
      t.string :mac_address

      t.timestamps
    end
  end
end
