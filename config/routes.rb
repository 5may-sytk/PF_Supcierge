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
    resources :users
  end

  scope module: :public do
    resources :users, only: [:show] #検証用
    get 'maypage', to: 'users#show', as: :maypage
    get 'maypage/edit', to: 'users#edit', as: :edit_maypage
    patch 'maypage', to: 'users#update'

    
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
