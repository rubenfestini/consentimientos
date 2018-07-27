class CreateAdditionalQuestions < ActiveRecord::Migration
  def change
    create_table :additional_questions do |t|
      t.string :question
      t.string :question_type
      t.string :integer
      t.references :paragraph, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
