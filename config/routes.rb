Rails.application.routes.draw do
  namespace :ruby do
    resources :exam, only: :index
    resources :classes
    resources :methods
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
