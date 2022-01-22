Rails.application.routes.draw do
  root "brands#index"
  get '/effects', to: "effects#index"
  get '/brands', to: "brands#index"
  get '/variants', to: "variants#index"
  get '/about', to: "about#index"
  get '/contribute', to: "contribute#index"
  get '/contribute/brand', to: "contribute#brand"
  get '/contribute/thank-you', to: "contribute#thank-you"

  post '/contribute/brand', to: "brands#create"
end
