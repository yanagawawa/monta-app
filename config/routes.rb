Rails.application.routes.draw do

  root to: 'homes#top'
  get '/about' => 'homes#about'
  get '/torainer_about' => 'homes#torainer_about'

  namespace :trainer do

  devise_for :trainers, controllers: {
   sessions:      "trainer/trainers/sessions",
   registrations: "trainer/trainers/registrations",
   passwords: "trainer/trainers/passwords"
  }

  resources :lessons, only: [:new, :create, :edit, :update]


  end

  scope module: :public do

  devise_for :users, controllers: {
   sessions:      "users/sessions",
   registrations: "users/registrations",
   passwords: "users/passwords"
 }

  resources :lessons, only: [:index, :show]
  get '/calendar' => 'lessons#calendar'

  end



end
