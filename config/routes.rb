Twetter::Application.routes.draw do
  get "profiles/show"
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  authenticated :user do
    resources :follows, :except => [:new, :edit, :show, :update]
    resources :twets, :except => [:new, :edit, :show, :update]
    root :to => 'follows#index', :as => :user_root
    get ':username', to: 'profiles#show', as: 'profile'
  end

  # You can have the root of your site routed with "root"
  root :to => 'home#index'
end
