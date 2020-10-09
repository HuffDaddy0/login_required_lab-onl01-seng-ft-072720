class SessionsController < ApplicationController
    def new
        
    end
    def create
        if params[:name] != "" && params[:name] != nil
            session[:name] = params[:name]

            redirect_to home_path
        else
            redirect_to new_login_path
        end
    end

    def destroy
        session.delete :name
    end

    def current_user
        session[:name]
    end
end