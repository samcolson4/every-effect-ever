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
  get '/effects/contribute', to: "effects#contribute"
  get '/versions/contribute', to: "versions#contribute"
  get '/contribute/thank-you', to: "contribute#thank-you"

  # Contributing post
  post '/brands', to: "brands#create"
  post '/effects', to: "effects#create"
  post '/versions', to: "versions#create"

end
