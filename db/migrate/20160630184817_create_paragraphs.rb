class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
