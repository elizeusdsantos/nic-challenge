Rails.application.routes.draw do
  root 'conglomerates#index'
  resources :conglomerates, only: [:index, :show]
  resources :companies, only: :show
end
