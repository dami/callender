Rails.application.routes.draw do
  resources :diaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  get "new" => "home#new"
  post "create" => "home#create"
end
