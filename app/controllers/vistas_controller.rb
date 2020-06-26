# frozen_string_literal: true

# This controller contains all the methods for hand-made CRUD's
class VistasController < ApplicationController
  def show_user
    @user = User.find(params[:id])
    @comuna = Comuna.find(@user.comuna_id)
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
    # Destroys all instances of Platos, Comentarios, Invitations, Cita  before deleting local
    Plato.where(local_id: params[:id]).destroy_all
    Comentario.where(local_id: params[:id]).destroy_all
    Invitation.where(local_id: params[:id]).destroy_all
    Citum.where(local_id: params[:id]).destroy_all
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
    # Destroys all instances of Citum, Comentario, Interaction, Invitation,
    #  Match & Gusto before deleting local
    Citum.where(user1_id: params[:id]).destroy_all
    Citum.where(user2_id: params[:id]).destroy_all
    Comentario.where(user_id: params[:id]).destroy_all
    Interaction.where(user_id: params[:id]).destroy_all
    Interaction.where(user_id_destiny: params[:id]).destroy_all
    Invitation.where(user_invita: params[:id]).destroy_all
    Invitation.where(user_invitado: params[:id]).destroy_all
    Match.where(user_id1: params[:id]).destroy_all
    Match.where(user_id2: params[:id]).destroy_all
    # Gustos_User.where(:user_id => params[:id]).destroy_all
    # Note: Last line not needed. All instances of gustos_users user_id => id get deleted on request
    # Gustos already created by user id keep existing for other users.
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admins_users_path, notice: 'Usuario eliminado con éxito'
  end

  def show_user_locals
    @locals = Local.all
    render 'users/lista_locales'
  end

  def show_user_users
    @users = User.all
    render 'interactions/find'
    @test = ActiveRecord::Base.connection.execute('SELECT * FROM Interactions;').to_a
  end

  def show_user_gustos
    render 'users/lista_gustos'
  end

  def add_user_gusto
    @gusto = Gusto.find(params[:gusto_id])
    @user = User.find(params[:user_id])
    @user.gustos << @gusto
    render 'users/lista_gustos'
  end

  def show_local_comentarios
    @comentarios = Comentario.all
    render 'locals/lista_comentarios'
  end

  def delete_user_gusto
    @gusto = Gusto.find(params[:gusto_id])
    @user = User.find(params[:user_id])
    @user.gustos.delete(@gusto)
    render 'users/lista_gustos'
  end
end
