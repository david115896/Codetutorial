class ApplicationController < ActionController::Base
    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :password, :password_confirmation, :remember_me)}
        devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :password, :password_confirmation, :current_password)}
    end

    def authenticate_user
        unless user_signed_in?
            redirect_to new_user_session_path, flash: {danger: "Please to log in!"}
        end
    end
end
