class AddYearsCompletedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :years_completed, :integer
  end
end
