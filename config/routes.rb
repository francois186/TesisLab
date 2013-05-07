TesisLab::Application.routes.draw do
  resources :fuente_bibliograficas, :only => [:create, :new]
  resources :compromisos, :only => [:create, :new]
  resources :reunione, :only => [:list, :new, :create]  do

    resources :tesis
  end
  resources :estudiantes  do
    resources :tesis
  end

  resources :archivos
  resources :temas, :only => [ :new, :create]

  match '/fuente_bibliograficas/list' => 'fuente_bibliograficas#list'
  match '/fuente_bibliograficas/creado' => 'fuente_bibliograficas#create'
  match '/temas/confirm'=>'temas#confirm'
  match '/compromisos/list' => 'compromisos#list'
  match '/compromisos/:CODIGO/list' => 'compromisos#compromiso_estudiante'
  match '/compromisos/creado' => 'compromisos#create'
  match '/compromisos/eventos' => 'compromisos#eventos'

  match '/entregables/list' => 'entregable#list'
  match '/estudiantes' => 'estudiantes#index'

  match '/reuniones/list' => 'reunione#list'
  match '/reuniones/new' => 'reunione#new'
  match '/reuniones' => 'reunione#create'
  match '/login' => 'login#index'
  match '/login/login' => 'login#login'
  match '/login/create' => 'login#creartesis'
  match '/profesores' => 'profesores#index'
  match '/tesis/create' => 'tesis#creartesis'
  match '/tesis/:id' => 'tesis#show'

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
  root :to => 'login#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
