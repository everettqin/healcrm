Healcrm::Application.routes.draw do
  devise_for :admins

  match 'login', :to => 'login#index'
  match 'login/logout', :to => 'login#logout'
  match 'home', :to => 'Home#index'
  root :to => 'frame#index'

  match 'customers', :to => 'customers#index'
  match 'customers/add', :to => 'customers#add'
  match 'customers/create', :to => 'customers#create'
  match 'customers/edit/:id', :to => 'customers#edit'
  match 'customers/update/:id', :to => 'customers#update'
  match 'customers/destroy/:id', :to => 'customers#destroy'
  match 'customers/edit/disease/:id', :to => 'customers#edit_disease'
  match 'customers/update/disease/:id', :to => 'customers#update_disease'

  match 'customers/:id/products', :to => 'customer_products#index'
  match 'customers/:id/products/add', :to => 'customer_products#add'
  match 'customers/:id/products/create', :to => 'customer_products#create'
  match 'customers/:id/products/edit/:pid', :to => 'customer_products#edit'
  match 'customers/:id/products/update/:pid', :to => 'customer_products#update'
  match 'customers/:id/products/destroy/:pid', :to => 'customer_products#destroy'


  match 'customers/:id/services', :to => 'customer_services#index'
  match 'customers/:id/services/add', :to => 'customer_services#add'
  match 'customers/:id/services/create', :to => 'customer_services#create'
  match 'customers/:id/services/edit/:pid', :to => 'customer_services#edit'
  match 'customers/:id/services/update/:pid', :to => 'customer_services#update'
  match 'customers/:id/services/destroy/:pid', :to => 'customer_services#destroy'


  match 'customers/:id/buys', :to => 'customer_buys#index'
  match 'customers/:id/buys/add', :to => 'customer_buys#add'
  match 'customers/:id/buys/create', :to => 'customer_buys#create'
  match 'customers/:id/buys/edit/:pid', :to => 'customer_buys#edit'
  match 'customers/:id/buys/update/:pid', :to => 'customer_buys#update'
  match 'customers/:id/buys/destroy/:pid', :to => 'customer_buys#destroy'


  match 'customers/:id/maintenances', :to => 'customer_maintenances#index'
  match 'customers/:id/maintenances/add', :to => 'customer_maintenances#add'
  match 'customers/:id/maintenances/create', :to => 'customer_maintenances#create'
  match 'customers/:id/maintenances/edit/:pid', :to => 'customer_maintenances#edit'
  match 'customers/:id/maintenances/update/:pid', :to => 'customer_maintenances#update'
  match 'customers/:id/maintenances/destroy/:pid', :to => 'customer_maintenances#destroy'


  match 'customers/:id/complaints', :to => 'customer_complaints#index'
  match 'customers/:id/complaints/add', :to => 'customer_complaints#add'
  match 'customers/:id/complaints/create', :to => 'customer_complaints#create'
  match 'customers/:id/complaints/edit/:pid', :to => 'customer_complaints#edit'
  match 'customers/:id/complaints/update/:pid', :to => 'customer_complaints#update'
  match 'customers/:id/complaints/destroy/:pid', :to => 'customer_complaints#destroy'

  match 'customers/:id/suggests', :to => 'customer_suggests#index'
  match 'customers/:id/suggests/add', :to => 'customer_suggests#add'
  match 'customers/:id/suggests/create', :to => 'customer_suggests#create'
  match 'customers/:id/suggests/edit/:pid', :to => 'customer_suggests#edit'
  match 'customers/:id/suggests/update/:pid', :to => 'customer_suggests#update'
  match 'customers/:id/suggests/destroy/:pid', :to => 'customer_suggests#destroy'


  match 'customers/:id/diseases', :to => 'customer_diseases#index'
  match 'customers/:id/diseases/add', :to => 'customer_diseases#add'
  match 'customers/:id/diseases/create', :to => 'customer_diseases#create'
  match 'customers/:id/diseases/edit/:pid', :to => 'customer_diseases#edit'
  match 'customers/:id/diseases/update/:pid', :to => 'customer_diseases#update'
  match 'customers/:id/diseases/destroy/:pid', :to => 'customer_diseases#destroy'



  #resources :customers do
  #  collection do
  #    get "list"
  #  end
  #  member do
  #    post "update_disease"
  #    post "edit_disease"
  #  end
  #end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
