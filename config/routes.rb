Rails.application.routes.draw do
  root to: "welcome#index"
  post '/create-quote', to: 'welcome#create_quote', as: 'create_quote'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/quotes', to: 'quotes#index', as: 'quotes'
    end
  end
end
