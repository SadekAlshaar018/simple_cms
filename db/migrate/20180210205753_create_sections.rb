class CreateSections < ActiveRecord::Migration[5.1]
  def up
    create_table :sections do |t|
      t.integer "page_id"
      t.string "name"
      t.string "permalink"
      t.integer "position"
      t.boolean "visiable", :default => false
      t.string "content_type"
      t.text "content"
      t.timestamps
    end
    add_index("section", "page_id")
  end

  def down
    drop_table :sections

  end
end
