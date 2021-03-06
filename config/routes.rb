Rails.application.routes.draw do


  resources :schools

  resources :franchises

  
  


devise_for :users
  get 'admin' => 'admin#index'
  get 'users/index'

  get 'accounts/index'
  get 'accounts/show'

 # resources :accounts do
   # collection do
  #    post 'deposit', :action => :deposit
   #   post 'withdrawl', :action => :withdrawl
 #   end
 # end
   
   
resources :accounts
  #controller :sessions do
  #  get 'login' => :new
  #  post 'login' => :create
  #  delete 'logout' => :destroy
  #end   
    root 'store#index', as: 'store'

  #get 'sessions/create'
  #get 'sessions/destroy'

  #resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  resources :menus
  
  resources :users do
    resources :franchises
  end
  
  resources :students do
    collection do
      get :add
    end
  end

  post "/process_add/", :to => "students#process_add", :as => 'process_add'
  get "/add/", :to => "students#add", :as => 'add'

  resources :schools do
    collection do
      get :approve
    end
  end
  post "/process_approve/", :to => "schools#process_approve", :as => 'process_approve'
  get "/approve/", :to => "schools#approve", :as => 'approve'

  resources :franchises do
    collection do
      get :fan_approve
    end
  end
  post "/fran_process_approve/", :to => "franchises#fran_process_approve", :as => 'fran_process_approve'
  get "/fran_approve/", :to => "franchises#fran_approve", :as => 'fran_approve'
  
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
