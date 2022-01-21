Rails.application.routes.draw do
  root "brands#index"
  get '/effects', to: "effects#index"
  get '/brands', to: "brands#index"
  get '/variants', to: "variants#index"
  get '/about', to: "about#index"
end
