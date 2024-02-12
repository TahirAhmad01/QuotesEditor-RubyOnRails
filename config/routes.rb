Rails.application.routes.draw do
  resources :quotes
  root "quotes#index", as: "quotes_index"
  get "up" => "rails/health#show", as: :rails_health_check
end
