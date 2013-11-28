Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :affiliates
  end
end
