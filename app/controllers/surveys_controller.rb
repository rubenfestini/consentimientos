class SurveysController < ApplicationController
  protect_from_forgery with: :exception

  def index
    paragraph = Paragraph.find_by_sql(%{SELECT * FROM paragraphs WHERE id NOT IN (SELECT paragraph_id FROM surveys WHERE user_id = #{@user.id}) AND id NOT IN (SELECT paragraph_id FROM surveys GROUP BY paragraph_id HAVING count(*)>2) ORDER BY RANDOM() LIMIT 1}).first

    if paragraph != nil
      @survey = Survey.create(user_id: @user.id, paragraph: paragraph)
    else
      redirect_to controller: :end_surveys, action: :index
    end
  end

  def update
    @survey = Survey.find(params[:id])
    if params[:survey] == nil
      flash[:alert] = "That's wrong 1"
    elsif @survey.update!(survey_params)
      redirect_to controller: :surveys, action: :index
    else
      flash[:alert] = "That's wrong 2"
    end
  end

  private
  def survey_params
    params.require(:survey).permit(:q1, :q2)
  end
end