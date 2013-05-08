TesisLab::Application.routes.draw do
  resources :fuente_bibliograficas, :only => [:create, :new]
  resources :compromisos, :only => [:create, :new]
  resources :reunione, :only => [:list, :new, :create]  do

    resources :tesis
  end
  resources :estudiantes  do
    resources :tesis
  end


  resources :anotacions, :only => [:create, :new]
  #resources :anotacions, :except => [:new] do
  #  collection do
  #    get 'new/:fuenteid', :to => "anotacions#new", :as => 'new'
  #  end
  #end

  resources :archivos, :only => [:new, :create]
  match '/archivos/confirmacion' => 'archivos#confirmacion'
  match '/archivos' => 'archivos#index'

  resources :temas, :only => [:new, :create]
  match '/fuente_bibliograficas' => 'fuente_bibliograficas#index'

  match '/fuente_bibliograficas/list' => 'fuente_bibliograficas#list'
  match '/fuente_bibliograficas/creado' => 'fuente_bibliograficas#create'
  match '/fuente_bibliograficas/get_all' =>'fuente_bibliograficas#get_all'

  match '/bibliografia'=>'fuente_bibliograficas#bibliografia'
  match '/temas/confirm'=>'temas#confirm'
  match '/compromisos/list' => 'compromisos#list'
  match '/compromisos/:ID/list' => 'compromisos#compromiso_estudiante'
  match '/compromisos/creado' => 'compromisos#create'
  match '/compromisos/eventos' => 'compromisos#eventos'
  match '/compromisos/:id/edit' => 'compromisos#edit'
  match '/compromisos/:id/update' => 'compromisos#update'
  match '/compromisos'=>'compromisos#index'


  resources :tag, :only => [:new, :create]
  match '/tag'=>'tag#index'
  match '/tag/buscar' => 'tag#buscar'
  match '/tag/fuentes' => 'tag#fuentes', :as => 'fuentes'
  match '/tag/entregables' => 'tag#archivos', :as => 'archivos'
  match '/tag/reuniones' => 'tag#reuniones', :as => 'reuniones'
  match '/tag/temas' => 'tag#temas', :as => 'temas'
  match '/tag/compromisos' => 'tag#compromisos', :as => 'compromisos'
  match '/tag/confirma' => 'tag#confirma'
  match '/tag/asignar' => 'tag#asignar'
  match '/tag/parcial' => 'tag#parcial'
  match '/tag/conf' => 'tag#conf'

  match '/entregables/list' => 'entregable#list'
  match '/estudiantes' => 'estudiantes#index'
  match '/reuniones' => 'reunione#index'
  match '/reuniones/list' => 'reunione#list'
  match '/reuniones/:id/edit' => 'reunione#edit'
  match '/reuniones/:id/update' => 'reunione#update'
  match '/anotacions/list' => 'anotacions#list'
  match '/anotacions/:fuenteid' => 'anotacions#show'
  #match '/anotacions/:fuenteid/new' => 'anotacions#new' , :as => 'new_anotacion'

  match '/reuniones/new' => 'reunione#new'
  match '/reuniones' => 'reunione#create'

  match '/login' => 'login#index'
  match '/login/login' => 'login#login'
  match '/login/create' => 'login#creartesis'
  match '/profesores' => 'profesores#index'
  match '/tesis/create' => 'tesis#creartesis'
  match '/tesis/:id' => 'tesis#show'
  match '/temas/add' => 'fuente_bibliograficas#add'
  match '/temas/assigned' => 'fuente_bibliograficas#added'

  match '/index_estudiantes' => 'login#bienvenidae'

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
