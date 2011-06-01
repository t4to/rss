RSS::Application.routes.draw do
  #get "twitt/index"
  match "twitter" => "twitt#index", :as => "posts"

  root :to => "home#index"

end
