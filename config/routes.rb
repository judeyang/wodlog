Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }

    resources :wods
    root 'wods#index'

    namespace :owner do
      resources :wods do
        member do
          post :publish
          post :hide
        end
      end
    end
end
