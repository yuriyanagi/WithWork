class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string :title
      t.text :content
      t.references :user
      t.timestamps
    end
  end
end
