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

  EDUCATION_LEVELS = [:unfinished_elementary, :elementary, :highschool, :terciary]
  enum education_level: EDUCATION_LEVELS

  SOCIOECONOMIC_LEVELS = [:high, :medium, :low]
  enum socioeconomic_level: SOCIOECONOMIC_LEVELS

  MOTHER_LANGUAGES = [:spanish, :english, :french, :german, :italian, :portuguese, :others]
  enum mother_language: MOTHER_LANGUAGES

  OCCUPATIONS = [:employer1, :employer2, :self_employed, :professional1, :professional2, :salaried1, :salaried2,
                 :unemployed1, :unemployed2, :rentier, :housewife,:other_occupation]
  enum occupation: OCCUPATIONS
end



