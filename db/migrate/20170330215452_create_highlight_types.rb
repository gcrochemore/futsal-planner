class CreateHighlightTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :highlight_types do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
