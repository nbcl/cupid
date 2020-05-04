# frozen_string_literal: true
class VistasController < ApplicationController
  def show_user
    @user = User.find(params[:id])
    render 'users/perfil'
  end

  def destroy_user
    session[:user_id] = nil
    @user = User.find(params[:id])
    @user.destroy
    render 'welcome/index'
  end

  def show_local
    @local = Local.find(params[:id])
    render 'locals/perfil'
  end

  def destroy_local
    session[:local_id] = nil
    @local = Local.find(params[:id])
    @local.destroy
    render 'welcome/index'
  end

  def show_admin_locales
    @locals = Local.all
    render 'admins/lista_locales'
  end

  def show_admin_local
    @local = Local.find(params[:id])
    render 'locals/show'
  end

  def destroy_admin_local
    @local = Local.find(params[:id])
    @local.destroy
    redirect_to admins_locales_path, notice: 'Local eliminado con éxito'
  end

  def show_admin_usuarios
    @users = User.all
    render 'admins/lista_usuarios'
  end
  
  def show_admin_usuario
    @user = User.find(params[:id])
    render 'users/show'
  end

  def destroy_admin_user
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admins_users_path, notice: 'Usuario eliminado con éxito'
  end
  
end
