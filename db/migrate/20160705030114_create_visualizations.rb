class CreateVisualizations < ActiveRecord::Migration
  def change
    create_table :visualizations do |t|
      t.string :file_path
      t.string :html

      t.timestamps null: false
    end
  end
end
