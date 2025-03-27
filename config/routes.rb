Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: 'admin/sessions',
  }

  devise_for :users,skip: [:mailer], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions',
    passwords: 'public/passwords'
  }

  root to: "homes#top"
  get "about", to: "homes#about"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
