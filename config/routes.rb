Rails.application.routes.draw do
  root 'conglomerates#index'
  resources :conglomerates, only: [:index, :show]
  resource :company, only: :show
end
