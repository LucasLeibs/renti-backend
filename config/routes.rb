Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: 'graphql#execute'
  end
  
  post "/graphql", to: "graphql#execute"
  # resources :reviews
  # resources :rentals
  # resources :users
  # post '/auth/login', to: 'authentication#login'
  # get '/*a', to: 'application#not_found'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
