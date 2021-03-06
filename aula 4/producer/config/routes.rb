Producer::Application.routes.draw do

  root to: 'pages#index'
  get "pages/index"

  match '/home'   => "pages#index",  :as => :home
  match '/prices' => "pages#prices", :as => :prices
  match '/tour'   => "pages#tour",   :as => :tour

  resources :categories

  resources :posts do
    resources :comments, :only => [:create]
  end

 namespace :admin do
  root to: "posts#index"
  resources :posts
  resources :categories, except: [:show]
  resources :assets
 end


end
