Rails.application.routes.draw do

  root to: 'homes#top'
  get '/about' => 'homes#about'
  get '/trainer_about' => 'homes#trainer_about'

  devise_for :trainers, controllers: {
    sessions: "trainers/sessions",
    registrations: "trainers/registrations",
    passwords: "trainers/passwords"
  }

  namespace :trainer do
    resources :trainers, only: [:show, :edit, :update]
    get 'trainers/history' => 'trainers#history'
    resources :lessons, only: [:new, :create, :edit, :update]
  end

  scope module: :public do
    devise_for :users, controllers: {
    sessions:      "public/users/sessions",
    registrations: "public/users/registrations",
    passwords: "public/users/passwords"
  }

  resources :lesson_trainers, only: [:index, :show, :create]
  resources :lessons, only: [:index, :show]
  get '/calendar' => 'lessons#calendar'

  end



end
