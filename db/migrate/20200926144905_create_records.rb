class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.datetime :start, null: false
      t.datetime :end, null: false
      t.string :class1, null: false
      t.string :class2, null: false
      t.string :class3
      t.references :user
      t.timestamps
    end
  end
end
