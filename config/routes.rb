Rails.application.routes.draw do
  devise_for :users
  resources :messages
  resources :channels do
    resources :messages
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

  get '/static_pages/home', to: 'static_pages#home', as: 'home_page'

end
