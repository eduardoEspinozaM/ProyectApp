Rails.application.routes.draw do
  get "tienda/show"
  get "tienda/agregar"

  resources :categorias
  resources :categorias
  resources :detalle_presupuestos
  resources :presupuestos
  resources :tiendas
  resources :detalles
  resources :agregar


  resources :productos do
    member do 
      put 'agregar'
      delete 'eliminar'
    end
  end

  resources :carritos
  resources :categoria
  resources :marcas
 devise_for :usuarios,  controllers: { sessions: "usuarios/sessions", registrations: "usuarios/registrations", passwords: "usuarios/passwords"  }, :path_names => {:sign_in => 'login', :sign_up => 'registro', :sign_out => 'logout'}
  as :usuario do
    get 'sign_in' => 'usuarios/sessions#new', :as => :new_usuario_session_path
    get 'sign_up' => 'usuarios/registrations#create', :as => :usuario_registration_path
    delete 'sign_out' => 'usuarios/sessions#destroy', :as => :destroy_usuario_session_path
    get 'new' => 'usuarios/sessions#destroy', :as => :new_usuario_password_path
    
  end 

  devise_for :clientes,  controllers: { sessions: "clientes/sessions", registrations: "clientes/registrations", passwords: "clientes/passwords"  }, :path_names => {:sign_in => 'login', :sign_up => 'registro', :sign_out => 'logout'}
  as :cliente do
    get 'sign_in' => 'clientes/sessions#new', :as => :new_cliente_session_path
    get 'sign_up' => 'clientes/registrations#create', :as => :cliente_registration_path
    delete 'sign_out' => 'clientes/sessions#destroy', :as => :destroy_cliente_session_path
    get 'new' => 'clientes/sessions#destroy', :as => :new_cliente_password_path
    
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'tiendas#index'

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
