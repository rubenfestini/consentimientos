class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :user
      t.belongs_to :user
      t.text :text

      t.timestamps null: false
    end
  end
end
