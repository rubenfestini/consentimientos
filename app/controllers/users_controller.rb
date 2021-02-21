class UsersController < ApplicationController
  protect_from_forgery with: :exception

  def update
    @user.update!(user_params)
    redirect_to controller: :surveys, action: :index
  end

  def user_params
    params.require(:user).permit(:age, :gender, :education_level, :socioeconomic_level, :mother_language, :occupation, :change_work, :social_plan)
  end

end
