class AdditionalQuestion < ActiveRecord::Base
  belongs_to :paragraph
  has_many :additional_question_answers, inverse_of: :additional_question
end
