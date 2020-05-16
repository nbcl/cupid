# frozen_string_literal: true

Rails.application.routes.draw do
  get 'platos/new'
  get 'platos/index'
  get 'platos/show'
  get 'platos/edit'
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions', registration: 'users/registrations' }
  devise_for :locals, controllers: { sessions: 'locals/sessions', registration: 'locals/registrations' }
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  get 'welcome/hello', to: 'welcome#hello'
  get 'users/perfil', to: 'vistas#show_user'
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

  # Rutas del CRUD Gusto
  # Create
  get 'gustos/new', to: 'gustos#new'
  post 'gustos', to: 'gustos#create'
  # Read
  get 'gustos', to: 'gustos#index'
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

  # Rutas del CRUD Admin
  get 'admins/locales', to: 'vistas#show_admin_locales'
  get 'admins/locals/:id', to: 'vistas#show_admin_local', as: :local
  delete 'admins/locals/:id', to: 'vistas#destroy_admin_local'

  get 'admins/users', to: 'vistas#show_admin_usuarios'
  get 'admins/users/:id', to: 'vistas#show_admin_usuario', as: :user
  delete 'admins/users/:id', to: 'vistas#destroy_admin_user'

  # Ruta para ver locales por usuario
  get 'users/locales', to: 'vistas#show_user_locals'

  # get '/ruta_nueva' => 'devise/template_nueva#new', :as => :new_user_registration_nombre
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
