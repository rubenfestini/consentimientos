class AddReadParagraphToUsers < ActiveRecord::Migration
  def change
    add_column :users, :read_paragraph, :integer
  end
end

