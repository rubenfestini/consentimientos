class AdditionalQuestion < ActiveRecord::Base
  belongs_to :paragraph
  has_many :additional_question_answers, inverse_of: :additional_question
  has_many :additional_question_options

  def optionsCollection
    return AdditionalQuestionOption.where( additional_question_id: id)
    # return AdditionalQuestionOption.select(:id,:option).where( additional_question_id: id)
    #return [[1,'20 miligramos'],[2,'30 miligramos']]
  end
end
