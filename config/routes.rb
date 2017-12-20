Rails.application.routes.draw do
  namespace :api do
    get "/contacts", to: "contacts#index", as: "contacts"
  end
end
