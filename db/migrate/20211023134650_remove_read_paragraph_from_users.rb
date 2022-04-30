class RemoveReadParagraphFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :read_paragraph, :integer
  end
end

