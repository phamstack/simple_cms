class CreateSubjects < ActiveRecord::Migration[6.0]
  def up
    create_table :subjects do |t|

      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false

      t.timestamps
    end
    puts "*** Subject Table created. ***"
  end

  def down
    drop_table :subjects
  end
end
