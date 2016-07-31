Rails.application.routes.draw do
  get "/about" => "pages#about"
  get "/hello" => "pages#hello_world"
  get "/end" => "pages#the_end"
  get "/time" => "pages#time"
  get "/fortune" => "pages#fortune"
  get "/lottery" => "pages#lottery"
  get "/lyrics" => 'pages#lyrics'

end
