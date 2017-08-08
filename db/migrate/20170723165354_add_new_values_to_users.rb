class AddNewValuesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :education_level, :integer
    add_column :users, :occupation, :integer
    add_column :users, :mother_language, :integer
    add_column :users, :socioeconomic_level, :string
    add_column :users, :integer, :string
  end
end
