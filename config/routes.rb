Rails.application.routes.draw do
  devise_for :users
  resources :languages do
    resources :skills
  end
  resources :languages do
    resources :comments
  end
  root "languages#index"
end
