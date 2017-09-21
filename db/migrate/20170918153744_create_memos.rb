class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.string :title
      t.string :word1
      t.string :word2
      t.text :content

      t.timestamps
    end
  end
end
