Spree::Core::Engine.routes.draw do
  get '/design-your-own', to: 'custom_projects#new'
  resources :custom_projects

  namespace :admin do
    resources :custom_projects
  end
end
