class Paragraph < ActiveRecord::Base
  has_many :surveys
  has_many :additional_questions
end