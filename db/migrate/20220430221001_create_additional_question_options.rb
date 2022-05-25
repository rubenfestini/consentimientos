class CreateAdditionalQuestionOptions < ActiveRecord::Migration
  def change
    create_table :additional_question_options do |t|
      t.string :option
      t.boolean :right_answer
      t.references :additional_question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
