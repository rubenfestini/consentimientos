class SurveysController < ApplicationController
  protect_from_forgery with: :exception

  def index
   # paragraph =  Paragraph.joins("LEFT OUTER JOIN surveys ON surveys.paragraph_id = paragraphs.id").where.not(surveys: {user: @user}).take    #Paragraph.order("RANDOM()").take
   paragraph = Paragraph.find_by_sql(%{SELECT * FROM paragraphs WHERE id NOT IN (SELECT paragraph_id FROM surveys WHERE user_id!= #{@user.id}) ORDER BY RANDOM() LIMIT 1}).first
    @survey = Survey.create(user_id: @user.id, paragraph: paragraph)
#    @survey = Survey.create(user_id: @user.id, paragraph: Paragraph. left_outer_joins(:surveis).where(paragraphs: { id: null }).order("RANDOM()").take)

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