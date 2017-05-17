Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }

    namespace :owner do
      resources :wods do
        member do
          post :publish
          post :hide
        end
      end
    end

    resources :scorings


    resources :wods do
      resources :scorings
    end



    root 'wods#index'



end
