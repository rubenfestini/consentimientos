class SurveysController < ApplicationController
  protect_from_forgery with: :exception

  def index
    paragraph = Paragraph.find_by_sql(%{SELECT * FROM paragraphs WHERE id NOT IN (SELECT paragraph_id FROM surveys WHERE user_id = #{@user.id}) AND id NOT IN (SELECT paragraph_id FROM surveys GROUP BY paragraph_id HAVING count(*)>2) ORDER BY RANDOM() LIMIT 1}).first
    #paragraph = Paragraph.find_by_sql(%{SELECT * FROM paragraphs WHERE id NOT IN (SELECT paragraph_id FROM surveys WHERE user_id = #{@user.id}) ORDER BY RANDOM() LIMIT 1}).first

    if paragraph != nil
      @survey = Survey.create(user_id: @user.id, paragraph: paragraph)
      @survey.paragraph.additional_questions.each do |aq|
        @survey.additional_question_answers.create(survey: @survey, additional_question: aq)
      end
    else
      redirect_to controller: :end_surveys, action: :index
    end
  end

  def update
    if params[:commit] == 'Finalizar'
      redirect_to controller: :end_surveys, action: :index
    else
      @survey = Survey.find(params[:id])
      @survey.update!(survey_params)
      redirect_to controller: :surveys, action: :index
    end
  end

  private
  def survey_params
    params.require(:survey).permit(:q1, :q2,  additional_question_answers_attributes: [:id, :answer_boolean, :answer_text, :_destroy])
    #    params.require(:survey).permit(:q1, :q2)
  end
end