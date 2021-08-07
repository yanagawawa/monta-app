Rails.application.routes.draw do
  devise_for :trainers
  
  root to: 'homes#top'
  get '/about' => 'homes#about'
  get '/torainer_about' => 'homes#torainer_about'
  
end
