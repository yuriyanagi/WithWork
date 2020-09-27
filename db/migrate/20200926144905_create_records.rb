class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.date :date, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.string :class1, null: false
      t.string :class2, null: false
      t.string :class3, null: false
      t.timestamps
    end
  end
end
