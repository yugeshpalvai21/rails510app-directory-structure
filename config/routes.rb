Rails.application.routes.draw do
  root 'pages#home'

  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact', as: 'contact'

  resources :articles

  resources :posts do
    resources :comments

    collection do
      get 'search_items' 
    end

    member do
      get 'more_details'
    end
  end

  namespace :admin do
    get 'dashboard', to: 'users#index'
  end

  get 'about-me', to: redirect('pages/about')

  namespace :api do
    namespace :v1 do
      resources :movies
    end

    namespace :v2 do
      resources :movies
    end
  end

  scope

end
