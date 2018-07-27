class CreateAdditionalQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :additional_question_answers do |t|
      t.text :response_text
      t.integer :response_int
      t.string :AdditionalQuestion
      t.string :references

      t.timestamps null: false
    end
  end
end
