class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.boolean :done, default: false
      t.string :title, null: false
      t.string :remarks
      t.date :deadline
      t.references :project, index: true
      t.timestamps
    end
  end
end
