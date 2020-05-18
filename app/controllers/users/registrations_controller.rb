# frozen_string_literal: true

# This controller allow the app to register new Instances of Model and delete them
class Users::RegistrationsController < Devise::RegistrationsController
  before_action :user_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  before_action :obtener_comuna, only: [:update]
  before_action :user_params, only: [:update]
  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    @user = User.create(user_params)
    # puts user_params
    # @user.comuna_id = user_params[:comuna_id]
    if @user.save
      redirect_to root_path, notice: 'Usuario creado con éxito'
    else
      redirect_to new_user_registration_path, notice: 'Ocurrió un error al crear el usuario.'
    end
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  def obtener_comuna
    @comuna = Comuna.find(comuna_params[:id])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:telefono])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:comuna_id])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre])
    devise_parameter_sanitizer.permit(:account_update, keys: [:telefono])
    devise_parameter_sanitizer.permit(:account_update, keys: [:comuna_id])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end

  private

  def user_params
    params.require(:user).permit(:nombre, :edad,
                                 :email, :telefono, :genero, :comuna_id) # and here
  end
end
