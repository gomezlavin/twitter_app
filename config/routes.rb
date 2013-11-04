TwitterApp::Application.routes.draw do
  
  root :to => "tweets#index"
  get "/search" => "tweets#search"
  resources :tweets
  

end
