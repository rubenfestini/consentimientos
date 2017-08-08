class Survey < ActiveRecord::Base
  belongs_to :paragraph
  belongs_to :user

  RANGES = []
  (1..5).step(1).each do |n|
    RANGES << [(n).to_s, (n).to_s]
  end
end
