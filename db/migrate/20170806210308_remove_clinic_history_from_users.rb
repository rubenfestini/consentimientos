class RemoveClinicHistoryFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :clinic_history, :integer
  end
end
