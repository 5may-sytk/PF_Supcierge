Rails.application.routes.draw do
  
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: 'admin/sessions',
  }

  devise_for :users, skip: [:mailer, :passwords], controllers: {
    registrations: "public/registrations",
    passwords:     'public/passwords',
    sessions: 'public/sessions'
    }, path_names: {
      sign_in: 'Log_in'
  }

  root to: "homes#top"
  get "about", to: "homes#about"

  namespace :admin do
  end

  scope module: :public do
    resources :users, only: [:show, :edit, :update]
    
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
