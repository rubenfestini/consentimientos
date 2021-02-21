class AdditionalQuestionAnswer < ActiveRecord::Base
  belongs_to :survey, inverse_of: :additional_question_answers
  belongs_to :additional_question
end