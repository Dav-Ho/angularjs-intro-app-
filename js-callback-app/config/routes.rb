Rails.application.routes.draw do
  get '/callbacks' => 'pages#callbacks'
  get '/market' => 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
