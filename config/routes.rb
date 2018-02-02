Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    get "/help", to: "static_pages#help", as: :help
    get "/about", to: "static_pages#about", as: :about
    get "/contact", to: "static_pages#contact", as: :contact
    get "/signup", to: "users#new", as: :signup
    root "static_pages#home"
  end
end
