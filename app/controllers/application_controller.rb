# frozen_string_literal: true

class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:telefono])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:comuna])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:descripcion])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:edad])
        devise_parameter_sanitizer.permit(:account_update, keys: [:nombre])
        devise_parameter_sanitizer.permit(:account_update, keys: [:comuna])
        devise_parameter_sanitizer.permit(:account_update, keys: [:telefono])
        devise_parameter_sanitizer.permit(:account_update, keys: [:descripcion])
        devise_parameter_sanitizer.permit(:account_update, keys: [:edad])
    end

    #def configure_permitted_parameters
    #  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #end
end

