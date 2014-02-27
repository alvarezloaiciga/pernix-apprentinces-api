ApprenticesApi::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :apprentices, path: 'api/v1/apprentices', controllers: { sessions: 'api/v1/custom_devise/sessions' }
  ActiveAdmin.routes(self)

  namespace :api do
    namespace :v1 do

      resources :lessons, only: :index
      resources :applies, only: :create
      resources :apprentices, only: :index
    end
  end
end
