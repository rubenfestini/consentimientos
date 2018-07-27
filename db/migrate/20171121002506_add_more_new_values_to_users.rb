class AddMoreNewValuesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :occupation, :text
    add_column :users, :change_work, :integer
    add_column :users, :social_plan, :integer
  end
end
