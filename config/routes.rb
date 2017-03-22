Rails.application.routes.draw do
  devise_for :users
  resources :languages do
    resources :skills
  end
  root "languages#index"
end
