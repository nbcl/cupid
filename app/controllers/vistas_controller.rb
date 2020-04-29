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
end
