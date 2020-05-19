Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  
  post "/graphql", to: "graphql#execute"

  root 'conglomerates#index'
  resources :conglomerates, only: [:index, :show]
  resources :companies, only: :show
end
