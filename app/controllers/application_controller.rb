class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    helper_method :current_user
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
    def authenticate_user!
      unless current_user
        redirect_to login_path, notice: 'Please login'
      end
    end
  
    def deny_access_to_authorized
      redirect_to input_url if current_user
    end
  end