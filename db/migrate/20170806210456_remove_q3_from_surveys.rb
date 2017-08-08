class RemoveQ3FromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :q3, :integer
  end
end
