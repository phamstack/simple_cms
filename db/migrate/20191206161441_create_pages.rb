class CreatePages < ActiveRecord::Migration[6.0]
  def up
    create_table :pages do |t|

      t.integer "subject_id"
      t.string "name"
      t.integer "permalink"
      t.integer "position"
      t.boolean "visible", :default => false

      t.timestamps
    end

    add_index "pages", "subject_id"
    add_index "pages", "permalink"
  end
  
  def down
    # don't need to drop indexes when dropping the whole table
    # remove_index "pages", "subject_id"
    # remove_index "pages", "permalink"
    drop_table "pages"
  end
end
