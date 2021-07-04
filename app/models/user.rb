class User < ActiveRecord::Base
  has_many :surveys

  GENDERS = [:male, :female, :other]
  enum gender: GENDERS

  RANGES = ["18-25"]
    (25..79).step(5).each do |n|
      RANGES << (n+1).to_s + "-" + (n+5).to_s
    end
    RANGES << "81+"
    enum age: RANGES

  EDUCATION_LEVELS = [:unfinished_elementary, :elementary, :highschool, :terciary, :postgraduate]
  enum education_level: EDUCATION_LEVELS

  MOTHER_LANGUAGES = [:spanish, :english, :french, :german, :italian, :portuguese, :others]
  enum mother_language: MOTHER_LANGUAGES

  CHANGE_WORK = [:yes1, :no1, :na1]
  enum change_work: CHANGE_WORK

  SOCIAL_PLAN = [:yes2, :no2, :na2]
  enum social_plan: SOCIAL_PLAN

end



