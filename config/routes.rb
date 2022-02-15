Rails.application.routes.draw do
  # get "/articles", to: "articles#test"
  # view > articles > test.html.erb
  # を参照している
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  # apiRresource のようなもの
  root "articles#index"
  resources :articles
end
