Rails.application.routes.draw do
  devise_for :users

    resources :wods
    root 'wods#index'

end
