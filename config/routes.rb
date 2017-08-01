Rails.application.routes.draw do
resources :users, except: [:index]
resources :questions do
  resources :answers, expect: [:new]
end
get "/sessions" => "sessions#destroy"
resources :sessions, only: [:new, :create, :destroy]
root "sessions#new"

end
