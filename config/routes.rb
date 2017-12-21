Rails.application.routes.draw do
  namespace :api do
    get "/contacts", to: "contacts#index", as: "contacts"
    get "/contacts/:id", to: "contacts#show", as: "contact"
    post "/contacts", to: "contacts#create"
    patch "/contacts/:id", to: "contacts#update"
    delete "/contacts/:id", to: "contacts#destroy"
  end
end
