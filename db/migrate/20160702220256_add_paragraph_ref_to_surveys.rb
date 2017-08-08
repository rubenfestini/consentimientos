class AddParagraphRefToSurveys < ActiveRecord::Migration
  def change
    add_reference :surveys, :paragraph, index: true, foreign_key: true
  end
end
