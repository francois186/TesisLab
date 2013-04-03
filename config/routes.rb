TesisLab::Application.routes.draw do
  resources :fuente_bibliograficas, :only => [:create, :new]

  resources :estudiantes  do
    resources :tesis
  end

  resources :anotacions, :only => [:create, :new]
  #resources :anotacions, :except => [:new] do
  #  collection do
  #    get 'new/:fuenteid', :to => "anotacions#new", :as => 'new'
  #  end
  #end

  match '/fuente_bibliograficas/list' => 'fuente_bibliograficas#list'
  match '/fuente_bibliograficas/creado' => 'fuente_bibliograficas#create'

  match '/compromisos/list' => 'compromisos#list'
  match '/compromisos/:CODIGO/list' => 'compromisos#compromiso_estudiante'

  match '/entregables/list' => 'entregable#list'
  match '/estudiantes' => 'estudiantes#index'
  match '/tesis/:id' => 'tesis#show'
  match '/reuniones/list' => 'reunione#list'
  match '/anotacions/list' => 'anotacions#list'
  match '/anotacions/:fuenteid' => 'anotacions#show'
  #match '/anotacions/:fuenteid/new' => 'anotacions#new' , :as => 'new_anotacion'
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
