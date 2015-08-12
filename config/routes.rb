Rails.application.routes.draw do
  
  root to: "pages#home", as: "home"
  get "shop", controller: "pages", action: "shop", as: "shop"
end