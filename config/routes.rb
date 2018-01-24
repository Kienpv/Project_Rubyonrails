Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    get "/home" => "static_pages#home", as: :home
    get "/help" => "static_pages#help", as: :help
    get "/about" => "static_pages#about", as: :about
    get "/contact" => "static_pages#contact", as: :contact
    root "static_pages#home"
  end
end
