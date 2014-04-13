<<<<<<< HEAD
TestApp::Application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  root 'home_pages#home'
  
  match '/help', to: 'home_pages#help', via: 'get'
  match '/about', to: 'home_pages#about', via: 'get'
  
  match '/signup', to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  

=======
Customer::Application.routes.draw do
  #root :to => "home_pages#home"
  
  
  root 'home_pages#home'
  match '/help', to: 'home_pages#help', via: 'get'
  match '/about', to: 'home_pages#about', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  

  #resources :users

  get "users/new"
  get "users/show"
  match '/signup', to: 'users#new', via: 'get'
  match '/users', to: 'users#index', via: 'get'
  match '/users', to: 'users#create', via: 'post'
  match '/users/new', to: 'users#new', via: 'get'


  resources :sessions, only: [:new, :create, :destroy]

  #resources :welcome
>>>>>>> fd93d8d470f2dd90da459cb99b177e1a7f15569a
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
<<<<<<< HEAD
  # root 'welcome#index'

=======
  #root to: 'welcome#index'

  #match '/signup', to: 'welcome#signup', via: 'get'
>>>>>>> fd93d8d470f2dd90da459cb99b177e1a7f15569a
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
