# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :admins, controllers: {sessions:"admins/sessions"}
  devise_for :users, controllers:{sessions:"users/sessions", registration:"users/registrations"}
  devise_for :locals, controllers:{sessions:"locals/sessions", registration:"locals/registrations"}
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  get 'welcome/hello', to: 'welcome#hello' 
  get 'users/perfil', to: 'vistas#show_user'
  get 'locals/perfil', to: 'vistas#show_local'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_scope :locals do
    get '/locals/sign_out' => 'devise/sessions#destroy'
  end

  #get '/ruta_nueva' => 'devise/template_nueva#new', :as => :new_user_registration_nombre
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
