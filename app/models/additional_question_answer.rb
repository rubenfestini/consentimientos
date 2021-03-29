class AdditionalQuestionAnswer < ActiveRecord::Base
  belongs_to :survey, inverse_of: :additional_question_answers
  belongs_to :additional_question

  #  ANSWER_BOOLEAN = [:yes3, :no3]
  ANSWER_BOOLEAN = [:yes3, :no3]
  enum answer_boolean: ANSWER_BOOLEAN
end