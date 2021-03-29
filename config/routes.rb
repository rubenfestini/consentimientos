Rails.application.routes.draw do
  root to: 'users#index'
  post 'users/update', to: 'users#update', as: :update_user

  get 'surveys/index'
  post 'surveys/update/:paragraph/:user_id', to: 'surveys#update', as: :update_survey

  get 'end_surveys/index'
 end
