Rails.application.routes.draw do
  root "brands#index"
  get '/effects', to: "effects#index"
  get '/brands', to: "brands#index"
  get '/clones', to: "clones#index"
end
