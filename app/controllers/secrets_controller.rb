class SecretsController < ApplicationController
    before_action :redirect_if_no_user

    def home
        @user = current_user
        
    end

    def show
        @secret = "This is the secret"
    end

    private
    def redirect_if_no_user
        if !current_user
            redirect_to new_login_path
        end
    end

end