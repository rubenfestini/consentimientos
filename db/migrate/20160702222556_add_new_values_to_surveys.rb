class AddNewValuesToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :q1, :integer
    add_column :surveys, :q2, :integer
    add_column :surveys, :q3, :integer
  end
end
