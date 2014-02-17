ApprenticesApi::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api do
    namespace :v1 do

      resources :lessons, only: :index
      resources :applies, only: :create
    end
  end
end
