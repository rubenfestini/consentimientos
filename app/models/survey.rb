class Survey < ActiveRecord::Base
  belongs_to :paragraph
  belongs_to :user
  has_many :additional_question_answers, inverse_of: :survey

  accepts_nested_attributes_for :additional_question_answers

  MIN_NUMBER_PARAGRAPHS = 14

  RANGES = []
  (1..5).step(1).each do |n|
    RANGES << [(n).to_s, (n).to_s]
  end

  # @return [Object]
  def surveys_answered_by_user
    return user.surveys.size
  end
end