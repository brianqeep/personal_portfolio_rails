Rails.application.routes.draw do
  resources :languages do
    resources :skills
  end
end
