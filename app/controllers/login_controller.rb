class LoginController < ApplicationController

    skip_before_action :current_user, only: [:new, :create]

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
        # params[:user][:username]
        # if @user = User.authenticate(params[:username], params[:password])
            # session[:current_user_id] = user.current_user
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            # flash[:notice] = "Please try logging in again."
            redirect_to "/login", notice: "Please try logging in again or create new account."
        end
    end

    def destroy
        # session.delete(:current_user_id)
        # session.delete(@user.id)
        #or log_out_user! method from app controller
        # session.delete(:user_id)  
        session.delete :user_id
        flash[:notice] = "You have logged out."
        byebug
        redirect_to "/login"
    end

end