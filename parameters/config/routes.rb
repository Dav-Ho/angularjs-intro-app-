Rails.application.routes.draw do
  get "/name/:first_name" => "parameters#name"
  get "/first_letter/:alphabet" => "parameters#first_letter"
  get "/guess/:number" => "parameters#guess"
  get "/wildcard_example/:hello" => "parameters#wildcard_example"
  get "/test/:color" => "parameters#test"
  get "/form" => "parameters#form"
  post "/form" => "parameters#form_post"
end
