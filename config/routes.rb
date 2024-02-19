Rails.application.routes.draw do
  root to: "pages#index"
  devise_for :users
  resources :quotes
  resources :quotes do
    resources :line_item_dates, except: [:index, :show]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
