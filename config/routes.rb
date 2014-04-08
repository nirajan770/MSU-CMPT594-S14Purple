Customer::Application.routes.draw do
  #root :to => "home_pages#home"
  
  
  root 'home_pages#home'
  match '/help', to: 'home_pages#help', via: 'get'
  match '/about', to: 'home_pages#about', via: 'get'
  match '/signin', to: 'home_pages#signin', via: 'get'
  

  #resources :users

  get "users/new"
  get "users/show"
  match 'users/index', to: 'users#index', via: 'post'
  match 'users/index', to: 'users#index', via: 'get'
  match 'users/new', to: 'users#new', via: 'get'
  #resources :welcome
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root to: 'welcome#index'

  #match '/signup', to: 'welcome#signup', via: 'get'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
