class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :class1, null: false
      t.string :class2, null: false
      t.string :class3
      t.references :user
      t.timestamps
    end
  end
end
