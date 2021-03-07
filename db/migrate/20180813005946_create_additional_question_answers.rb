class CreateAdditionalQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :additional_question_answers do |t|
      t.text :answer_text
      t.integer :answer_boolean
      t.references :survey, index: true, foreign_key: true
      t.references :additional_question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
