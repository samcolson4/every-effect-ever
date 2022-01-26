Rails.application.routes.draw do
  # Main pages
  root "about#index"
  get '/effects', to: "effects#index"
  get '/brands', to: "brands#index"
  get '/variants', to: "variants#index"
  get '/about', to: "about#index"
  get '/contribute', to: "contribute#index"

  # Contributing get
  get '/brands/contribute', to: "brands#contribute"
  get '/contribute/effect', to: "contribute#effect"
  get '/contribute/version', to: "contribute#version"
  get '/contribute/thank-you', to: "contribute#thank-you"

  # Contributing post
  post '/brands', to: "brands#create"
  post '/contribute/effect', to: "effects#create"
  post '/contribute/version', to: "version#create"

end
