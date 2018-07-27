class RemoveInitialValuesFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :occupation, :integer
    remove_column :users, :socioeconomic_level, :integer
  end
end
