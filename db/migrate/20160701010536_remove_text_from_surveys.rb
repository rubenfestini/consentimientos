class RemoveTextFromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :text, :text
  end
end
