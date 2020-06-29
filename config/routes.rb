# frozen_string_literal: true

Rails.application.routes.draw do
  resources :postulantes
  resources :invitations
  get 'matches/create'
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions', registration: 'users/registrations' }
  devise_for :locals, controllers: { sessions: 'locals/sessions', registration: 'locals/registrations' }
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  get 'users/comuna', to: 'welcome#comuna'
  get 'welcome/hello', to: 'welcome#hello'
  get 'users/perfil/:id', to: 'vistas#show_user', as: :user_perfil
  get 'locals/perfil', to: 'vistas#show_local'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/users/delete' => 'devise/registrations#destroy'
  end

  devise_scope :local do
    get '/locals/sign_out' => 'devise/sessions#destroy'
  end

  devise_scope :admin do
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end

  get 'users/sign_up/:id', to: 'users/registrations#new', as: :new_user
  
  # Rutas del CRUD Gusto
  # Create
  get 'gustos/new', to: 'gustos#new', as: :gustos_new
  post 'gustos', to: 'gustos#create'
  # Read
  get 'gustos', to: 'gustos#index', as: :lista_gustos
  get 'gustos/:id', to: 'gustos#show', as: :gusto
  # Update
  get 'gustos/:id/edit', to: 'gustos#edit', as: :gustos_edit
  patch 'gustos/:id/', to: 'gustos#update'
  put 'gustos/:id/', to: 'gustos#update'
  # Delete
  delete 'gustos/:id', to: 'gustos#destroy'

  # Rutas del CRUD Comentario
  # Create
  get 'comentarios/new/:id', to: 'comentarios#new', as: :comentarios_new
  post 'comentarios', to: 'comentarios#create'
  # Read
  get 'comentarios', to: 'comentarios#index'
  get 'comentarios/:id', to: 'comentarios#show', as: :comentario
  # Update
  get 'comentarios/:id/edit', to: 'comentarios#edit', as: :comentarios_edit
  patch 'comentarios/:id/', to: 'comentarios#update'
  put 'comentarios/:id/', to: 'comentarios#update'
  # Delete
  delete 'comentarios/:id', to: 'comentarios#destroy'

  # Rutas del CRUD Plato
  # Create
  get 'platos/new', to: 'platos#new'
  post 'platos', to: 'platos#create'
  # Read
  get 'platos', to: 'platos#index'
  get 'platos/:id', to: 'platos#show', as: :plato
  # Update
  get 'platos/:id/edit', to: 'platos#edit', as: :platos_edit
  patch 'platos/:id/', to: 'platos#update'
  put 'platos/:id/', to: 'platos#update'
  # Delete
  delete 'platos/:id', to: 'platos#destroy'

  # Rutas del CRUD Valoracion
  # Create
  get 'valoracions/new/:id', to: 'valoracions#new', as: :valoracions_new
  post 'valoracions', to: 'valoracions#create'
  # Read
  get 'valoracions', to: 'valoracions#index'
  get 'valoracions/:id', to: 'valoracions#show', as: :valoracion
  # Update
  get 'valoracions/:id/edit', to: 'valoracions#edit', as: :valoracions_edit
  patch 'valoracions/:id/', to: 'valoracions#update'
  put 'valoracions/:id/', to: 'valoracions#update'
  #Delete
  delete 'valoracions/:id', to: 'valoracions#destroy'
  #postulacion de locales
  get 'admins/postulacion', to: 'postulantes#index'

  # Rutas del CRUD Admin para locals
  # Create no aplica para locals
  # Read
  get 'admins/locales', to: 'vistas#show_admin_locales'
  get 'admins/locals/:id', to: 'vistas#show_admin_local', as: :local
  #Update
  get 'admins/locals/edit/:id', to: 'vistas#edit_local', as: :edit_admin_local
  # Delete
  delete 'admins/locals/:id', to: 'vistas#destroy_admin_local'
  
  # Confirmation
  get 'admins/postulantes', to: 'vistas#show_admin_postulantes'
  get 'admins/postulantes/edit/:id', to:'vistas#edit_admin_local'
  post 'admins/postulantes/edit/:id', to:'vistas#edit_admin_local'

  # Rutas admin CRUD user
  # Create no aplica
  get 'admins/users', to: 'vistas#show_admin_usuarios'
  get 'admins/users/:id', to: 'vistas#show_admin_usuario', as: :user
  #Update

  #Delete
  delete 'admins/users/:id', to: 'vistas#destroy_admin_user'

  
  # Interactions
  # Create
  get 'interactions/new/:id', to: 'interactions#new', as: :interactions_new
  post 'interactions/new/:id', to: 'interactions#create'
  get 'interactions/find',  to: 'vistas#show_user_users'

# Ureports
  # Create
  get 'ureports/new', to: 'ureports#new', as: :ureports_new
  post 'ureports/new', to: 'ureports#create'

# Lreports
  # Create
  get 'lreports/new', to: 'lreports#new', as: :lreports_new
  post 'lreports/new', to: 'lreports#create'
  
  # Matches
  get 'matches/find', to: 'matches#show', as: :matches_find

  resources :invitations do
    resources :cita
  end

  resources :cita

  # INVITATION_CITUM
  resources :invitations
  # Create
  get 'invtiations/:invitation_id/cita/new', to: 'cita#new' 
  post 'invitations/:invitation_id/cita/new', to: 'cita#create'
  # Read
  get 'invtiations/:invitation_id/cita/new/:id', to: 'cita#show' 
  # Update
  # Delete

  # CRUD Invitation
  # Create
  get 'invitations/new/:id', to: 'invitations#new', as: :new_invitation_a
  # Read
  get 'invitations', to: 'invitations#index', as: :invitations_list
  # Update
  # get "invitations/list/:id", to: 'invitations#edit', as: :invitation_editar
  # Delete
  
  # Ruta para ver el menu de un local
  get 'locals/menu', to: 'platos#index'

  # Rutas para ver y agregar gusto a un usuario
  get 'users/gustos', to: 'vistas#show_user_gustos'
  get 'user/gustos', to: 'vistas#add_user_gusto', as: :user_gusto
  get 'user/gusto', to: 'vistas#delete_user_gusto', as: :eliminar_gusto

  # Ruta para ver locales por usuario
  get 'users/locales', to: 'vistas#show_user_locals'

  # Rutas para ver los comentarios de un local
  get 'locals/comentarios', to: 'vistas#show_local_comentarios'

  get 'users/valorar/:id', to: 'vistas#valorar_local', as: :user_valorar

  # get '/ruta_nueva' => 'devise/template_nueva#new', :as => :new_user_registration_nombre
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Comunas
  resources :comunas
  # Read
  get '/comunas', to: 'comunas#index'
  
  #Delete
  delete 'comunas/:id', to: 'comunas#destroy', as: :delete_comuna
end
