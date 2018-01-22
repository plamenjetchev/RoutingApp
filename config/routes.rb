Rails.application.routes.draw do
#Custom nested routes:
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'  
  end
#Custom hardcoded routes:
  get 'about', to: 'pages#about'
#Creating custom url for route
  get 'whathaveyou/asdf/qwer/sdfg', to: 'pages#contact', as: 'lead'

  resources :blogs
  resources :posts
# Catch-all route (globbing):
  get 'posts/*missing', to: 'posts#missing'
#Custom dynamic deep nesting
  get 'query/:something', to: 'pages#controllermethod'
  get 'query/:something/:something_else', to: 'pages#controllermethod'
  get 'query/:something/:something_else/:another_else', to: 'pages#controllermethod'
                                    
  root to: 'pages#home'
end