Rails.application.routes.draw do
  
  root to: "pages#home", as: "home"
  
  resources :books
end