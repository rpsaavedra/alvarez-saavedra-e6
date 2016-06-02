Rails.application.routes.draw do

  get 'pass_resets/new'

  get 'pass_resets/edit'


  resources :proms
  resources :articles

  get 'admin/usuarios'

  get 'sessions/new'

  #get 'pages/home'
  root 'pages#home'


  get 'admin' => 'admin#index'


  get 'secret' => 'pass_resets#answer', as: 'secret'
  post 'secret' => 'pass_resets#verify', as: 'verificar'

  
  get "catal" => 'pages#home'

  get "marcos" => 'pages#marcos'


  #get 'login' => 'pages#login'
  get 'signup' => 'users#new'
  get 'promo' => 'pages#promociones'
  get 'prod' => 'pages#productos'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  get 'aresponse/:id' => 'pages#productos'
  get 'presponse' => 'pages#proms'

  get 'admin/editar/:id' => 'users#edit', as: 'editar'

  get 'productos' => 'articles#index'
  get 'promociones' => 'proms#index'
  get 'productos/:id' => 'articles#show'
  #get 'users', :as =>'normal'

  resources :users, :path => "normal"
  resources :pass_resets, only: [:new, :create, :edit, :update, :answer]

  resources :admin, :path => "admin"
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
