EarlyBird::Engine.routes.draw do
  resources :submissions
  root "submissions#new"
end
