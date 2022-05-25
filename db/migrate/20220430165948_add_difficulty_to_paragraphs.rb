class AddDifficultyToParagraphs < ActiveRecord::Migration
  def change
    add_column :paragraphs, :difficulty, :integer, limit: 2
  end
end
