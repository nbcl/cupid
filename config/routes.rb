# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  get 'welcome/hello', to: 'welcome#hello'
  get 'welcome/square', to: 'welcome#square', defaults: { value: 10 }
  get 'welcome/square/:value', to: 'welcome#square', constraints: { value: /\d{1,10}/ }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
