class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    before_action :current_user
    # helper_method :current_user, :logged_in?
    
    def current_user
        @logged_in = logged_in?
        if @logged_in
            @user = User.find(session[:user_id])
        # else
        #     flash[:notice] = "Please try logging in again."
            # redirect_to login_path
        end
        # @_current_user || = session[:current_user_id] &&
        # User.find_by(id: session[current_user_id])
    end

    def logged_in?
        !!session[:user_id]
    end

    def log_out_user!
        session.delete(:user_id)
    end

end
