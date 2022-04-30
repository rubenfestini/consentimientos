class AddSectionRefToParagraphs < ActiveRecord::Migration
  def change
    add_reference :paragraphs, :section, index: true, foreign_key: true
  end
end

