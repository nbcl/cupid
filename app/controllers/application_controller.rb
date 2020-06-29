# frozen_string_literal: true

# This controller allows to configure the permitted parameters needed
# for creating and updating a User Model
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :update_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:telefono])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:descripcion])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:edad])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:genero])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:comuna_id])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:valoracion])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:confirmation])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:song, :token])
  end

  def update_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:edad, :genero, :comuna_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre, :telefono, :descripcion])
    devise_parameter_sanitizer.permit(:account_update, keys: [:confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:song, :token])
    # Devise Accepts Avatar when Updating Parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
  end
end
