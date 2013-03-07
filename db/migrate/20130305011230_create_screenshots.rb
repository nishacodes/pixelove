class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.string :screenshot_file_name
      t.string :screenshot_content_type
      t.integer :screenshot_file_size
      t.datetime :screenshot_updated_at
      t.integer :pin_id

      t.timestamps
    end
  end
end
