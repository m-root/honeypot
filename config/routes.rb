Honeypot::Application.routes.draw do
  get "static_pages/home"
  get '/help',          to: 'static_pages#help'
  get '/about',         to: 'static_pages#about'
  get '/contact',       to: 'static_pages#contact'
  get '/how_it_works',  to: 'static_pages#how_it_works'
  
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "static_pages#home"
  devise_for :users, controllers: { registrations: 'registrations' } 
  resources :users
end