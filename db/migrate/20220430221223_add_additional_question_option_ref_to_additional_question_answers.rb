class AddAdditionalQuestionOptionRefToAdditionalQuestionAnswers < ActiveRecord::Migration
  def change
    add_reference :additional_question_answers, :additional_question_option, index: false, foreign_key: true
  end
end

